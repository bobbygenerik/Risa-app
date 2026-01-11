package p230;

import android.view.animation.AnimationUtils;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.util.ArrayList;
import java.util.Arrays;
import p003.RunnableC0786;
import p167.C2603;
import p167.C2608;

/* renamed from: ˑʿ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3183 extends AbstractC3166 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f12138;

    /* renamed from: ˈ, reason: contains not printable characters */
    public C2608 f12139;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final ʽﹳ f12140;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final /* synthetic */ C3170 f12141;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f12142;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public long f12143 = -1;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public RunnableC0786 f12144;

    public C3183(C3170 c3170) {
        this.f12141 = c3170;
        ʽﹳ r5 = new ʽﹳ((byte) 0, 15);
        long[] jArr = new long[20];
        r5.ʽʽ = jArr;
        r5.ˈٴ = new float[20];
        r5.ᴵˊ = 0;
        Arrays.fill(jArr, Long.MIN_VALUE);
        this.f12140 = r5;
    }

    @Override // p230.AbstractC3166, p230.InterfaceC3165
    /* renamed from: ˈ */
    public final void mo6941(AbstractC3143 abstractC3143) {
        this.f12138 = true;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, ˊᵔ.ᵎﹶ] */
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m6997() {
        int i;
        if (this.f12139 != null) {
            return;
        }
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        float f = (float) this.f12143;
        ʽﹳ r4 = this.f12140;
        int i2 = r4.ᴵˊ;
        float[] fArr = (float[]) r4.ˈٴ;
        long[] jArr = (long[]) r4.ʽʽ;
        char c = 20;
        int i3 = (i2 + 1) % 20;
        r4.ᴵˊ = i3;
        jArr[i3] = currentAnimationTimeMillis;
        fArr[i3] = f;
        ?? obj = new Object();
        float f2 = 0.0f;
        obj.f9867 = 0.0f;
        this.f12139 = new C2608(obj);
        C2603 c2603 = new C2603();
        c2603.m5852(1.0f);
        c2603.m5851(200.0f);
        C2608 c2608 = this.f12139;
        c2608.f9878 = c2603;
        c2608.f9885 = (float) this.f12143;
        c2608.f9875 = true;
        ArrayList arrayList = c2608.f9887;
        if (c2608.f9888) {
            throw new UnsupportedOperationException("Error: Update listeners must be added beforethe animation.");
        }
        if (!arrayList.contains(this)) {
            arrayList.add(this);
        }
        C2608 c26082 = this.f12139;
        int i4 = r4.ᴵˊ;
        long j = Long.MIN_VALUE;
        if (i4 != 0 || jArr[i4] != Long.MIN_VALUE) {
            long j2 = jArr[i4];
            int i5 = 0;
            long j3 = j2;
            while (true) {
                long j4 = jArr[i4];
                if (j4 != j) {
                    float f3 = (float) (j2 - j4);
                    float abs = (float) Math.abs(j4 - j3);
                    if (f3 > 100.0f || abs > 40.0f) {
                        break;
                    }
                    if (i4 == 0) {
                        i4 = 20;
                    }
                    i4--;
                    i5++;
                    if (i5 >= 20) {
                        break;
                    }
                    j3 = j4;
                    j = Long.MIN_VALUE;
                } else {
                    break;
                }
            }
            if (i5 >= 2) {
                float f4 = 1000.0f;
                if (i5 == 2) {
                    int i6 = r4.ᴵˊ;
                    int i7 = i6 == 0 ? 19 : i6 - 1;
                    float f5 = (float) (jArr[i6] - jArr[i7]);
                    if (f5 != 0.0f) {
                        f2 = ((fArr[i6] - fArr[i7]) / f5) * 1000.0f;
                    }
                } else {
                    int i8 = r4.ᴵˊ;
                    int i9 = ((i8 - i5) + 21) % 20;
                    int i10 = (i8 + 21) % 20;
                    long j5 = jArr[i9];
                    float f6 = fArr[i9];
                    int i11 = i9 + 1;
                    int i12 = i11 % 20;
                    float f7 = 0.0f;
                    while (i12 != i10) {
                        long j6 = jArr[i12];
                        char c2 = c;
                        float f8 = f4;
                        float f9 = (float) (j6 - j5);
                        if (f9 == f2) {
                            i = i11;
                        } else {
                            float f10 = fArr[i12];
                            int i13 = i11;
                            float f11 = (f10 - f6) / f9;
                            float abs2 = (Math.abs(f11) * (f11 - ((float) (Math.sqrt(2.0f * Math.abs(f7)) * Math.signum(f7))))) + f7;
                            i = i13;
                            if (i12 == i) {
                                abs2 *= 0.5f;
                            }
                            f7 = abs2;
                            f6 = f10;
                            j5 = j6;
                        }
                        i12 = (i12 + 1) % 20;
                        i11 = i;
                        c = c2;
                        f4 = f8;
                        f2 = 0.0f;
                    }
                    f2 = ((float) (Math.sqrt(Math.abs(f7) * 2.0f) * Math.signum(f7))) * f4;
                }
            }
        }
        c26082.f9886 = f2;
        C2608 c26083 = this.f12139;
        c26083.f9882 = (float) (this.f12141.f12032 + 1);
        c26083.f9884 = -1.0f;
        c26083.f9876 = 4.0f;
        C3179 c3179 = new C3179(this);
        ArrayList arrayList2 = c26083.f9881;
        if (arrayList2.contains(c3179)) {
            return;
        }
        arrayList2.add(c3179);
    }
}
