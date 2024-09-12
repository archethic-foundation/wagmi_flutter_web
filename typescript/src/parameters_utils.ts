export function illegalNullsToUndefined<T>(obj: T): T {
    if (typeof obj !== 'object' || obj === null) {
        return obj;
    }

    for (const key in obj) {
        if (obj.hasOwnProperty(key)) {
            const value = (obj as any)[key];

            if (value === null) {
                (obj as any)[key] = undefined;
            } else if (typeof value === 'object') {
                illegalNullsToUndefined(value);
            }
        }
    }

    return obj;
}