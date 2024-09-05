import "reflect-metadata";

export function illegalNullsToUndefined<T>(obj: T): T {
    if (typeof obj !== 'object' || obj === null) {
        return obj;
    }

    for (const key in obj) {
        if (obj.hasOwnProperty(key)) {
            const value = (obj as any)[key];

            if (value === null) {
                // Is property type `T | undefined` but not `T | null`
                const propertyType = Reflect.getMetadata("design:type", obj, key);
                if (propertyType !== null && propertyType === undefined) {
                    (obj as any)[key] = undefined;
                }
            } else if (typeof value === 'object') {
                illegalNullsToUndefined(value);
            }
        }
    }

    return obj;
}