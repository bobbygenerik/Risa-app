package p355;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

/* renamed from: ᵔˆ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4336 extends ByteArrayOutputStream {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ C4337 f16142;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4336(C4337 c4337, int i) {
        super(i);
        this.f16142 = c4337;
    }

    @Override // java.io.ByteArrayOutputStream
    public final String toString() {
        int i = ((ByteArrayOutputStream) this).count;
        if (i > 0 && ((ByteArrayOutputStream) this).buf[i - 1] == 13) {
            i--;
        }
        try {
            return new String(((ByteArrayOutputStream) this).buf, 0, i, this.f16142.f16146.name());
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }
}
