package kotlinx.serialization;

import p307.AbstractC3740;

/* loaded from: classes.dex */
public final class UnknownFieldException extends SerializationException {
    public UnknownFieldException(int i) {
        super(AbstractC3740.m7932(i, "An unknown field for index "));
    }
}
