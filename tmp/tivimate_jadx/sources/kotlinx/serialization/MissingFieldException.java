package kotlinx.serialization;

import java.util.List;

/* loaded from: classes.dex */
public final class MissingFieldException extends SerializationException {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final List f3111;

    public MissingFieldException(List list, String str, MissingFieldException missingFieldException) {
        super(str, missingFieldException);
        this.f3111 = list;
    }
}
