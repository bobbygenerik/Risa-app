package androidx.datastore.preferences.protobuf;

import com.google.android.gms.internal.play_billing.י;
import com.google.crypto.tink.shaded.protobuf.C0697;
import com.google.crypto.tink.shaded.protobuf.C0740;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import p256.AbstractC3374;

/* renamed from: androidx.datastore.preferences.protobuf.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0016 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public Object f396;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f397;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static int m225(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static long m226(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static C0697 m227(byte[] bArr, int i, int i2, boolean z) {
        C0697 c0697 = new C0697(bArr, i, i2, z);
        try {
            c0697.mo213(i2);
            return c0697;
        } catch (com.google.crypto.tink.shaded.protobuf.InvalidProtocolBufferException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: ʻٴ */
    public abstract long mo179();

    /* renamed from: ʼʼ */
    public abstract int mo180();

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public abstract int mo228();

    /* renamed from: ʼᐧ */
    public abstract double mo182();

    /* renamed from: ʽ, reason: contains not printable characters */
    public abstract int[] mo229(int[] iArr, int i);

    /* renamed from: ʽʽ */
    public abstract int mo183();

    /* renamed from: ʽﹳ */
    public abstract int mo184();

    /* renamed from: ʾˋ */
    public abstract String mo185();

    /* renamed from: ʾᵎ */
    public abstract long mo186();

    /* renamed from: ˆʾ */
    public abstract void mo187(int i);

    /* renamed from: ˈٴ */
    public abstract int mo190();

    /* renamed from: ˉʿ */
    public abstract boolean mo191();

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public abstract C0740 mo230();

    /* renamed from: ˊʻ */
    public abstract boolean mo193(int i);

    /* renamed from: ˏי */
    public abstract float mo196();

    /* renamed from: יـ */
    public abstract long mo198();

    /* renamed from: ـˆ */
    public abstract int mo199();

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public void m231() {
        int mo183;
        do {
            mo183 = mo183();
            if (mo183 == 0) {
                return;
            }
            int i = this.f397;
            if (i >= 100) {
                throw new IOException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            }
            this.f397 = i + 1;
            this.f397--;
        } while (mo193(mo183));
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public void m232(byte[] bArr, ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        if (bArr.length != mo228()) {
            throw new GeneralSecurityException("The nonce length (in bytes) must be " + mo228());
        }
        int remaining = byteBuffer2.remaining();
        int i = remaining / 64;
        int i2 = i + 1;
        for (int i3 = 0; i3 < i2; i3++) {
            ByteBuffer m233 = m233(this.f397 + i3, bArr);
            if (i3 == i) {
                י.ˊʻ(byteBuffer, byteBuffer2, m233, remaining % 64);
            } else {
                י.ˊʻ(byteBuffer, byteBuffer2, m233, 64);
            }
        }
    }

    /* renamed from: ᴵˊ */
    public abstract String mo201();

    /* renamed from: ᴵᵔ */
    public abstract long mo202();

    /* renamed from: ᵎﹶ */
    public abstract boolean mo205();

    /* renamed from: ᵔʾ */
    public abstract C0054 mo206();

    /* renamed from: ᵔﹳ */
    public abstract int mo209();

    /* renamed from: ᵢˏ */
    public abstract long mo210();

    /* renamed from: ⁱˊ */
    public abstract void mo211(int i);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public ByteBuffer m233(int i, byte[] bArr) {
        int[] mo229 = mo229(AbstractC3374.m7239(bArr), i);
        int[] iArr = (int[]) mo229.clone();
        AbstractC3374.m7238(iArr);
        for (int i2 = 0; i2 < mo229.length; i2++) {
            mo229[i2] = mo229[i2] + iArr[i2];
        }
        ByteBuffer order = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        order.asIntBuffer().put(mo229, 0, 16);
        return order;
    }

    /* renamed from: ﹳᐧ */
    public abstract int mo212();

    /* renamed from: ﾞʻ */
    public abstract int mo213(int i);

    /* renamed from: ﾞᴵ */
    public abstract int mo214();
}
