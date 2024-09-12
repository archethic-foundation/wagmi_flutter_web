import { illegalNullsToUndefined as sanitizeNullProperties } from "../src/parameters_utils";

describe('Args sanitize', () => {
    test('Should replace null values by undefined when property can be undefined.', () => {

        const originalObject = {
            nullProp: null,
            undefinedProp: undefined,
            stringProp: 'aValue',
            bigintProp: BigInt(1234567),
            uint8arrayProp: new Uint16Array([0, 1, 2, 3, 4]),
            boolProp: true,
            intProp: 12,
        }

        const sanitizedObject = sanitizeNullProperties(originalObject)

        expect(sanitizedObject).toStrictEqual(
            {
                nullProp: undefined,
                undefinedProp: undefined,
                stringProp: 'aValue',
                bigintProp: BigInt(1234567),
                uint8arrayProp: new Uint16Array([0, 1, 2, 3, 4]),
                boolProp: true,
                intProp: 12,
            }
        )
    });
});