package p328;

import android.os.Looper;
import android.support.v4.media.session.AbstractC0001;
import android.util.AndroidRuntimeException;
import android.view.animation.AnimationUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p010.AbstractC0844;
import p307.AbstractC3740;

/* renamed from: ᴵᵔ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C4074 extends AbstractC4084 implements InterfaceC4081 {

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public static final C4077 f15511 = new C4077(2);

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public boolean f15517;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public C4066[] f15521;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public HashMap f15529;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public long f15515 = -1;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public float f15524 = -1.0f;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public float f15523 = 0.0f;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public long f15516 = -1;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f15526 = false;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f15522 = false;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public boolean f15525 = false;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public boolean f15527 = false;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public boolean f15513 = false;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public long f15528 = 300;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public int f15514 = 0;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public int f15520 = 1;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public boolean f15519 = true;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public boolean f15518 = false;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public InterfaceC4064 f15512 = f15511;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static C4074 m8318(float... fArr) {
        C4074 c4074 = new C4074();
        c4074.mo8326(fArr);
        return c4074;
    }

    @Override // p328.AbstractC4084
    public final void cancel() {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        if (this.f15513) {
            return;
        }
        if ((this.f15522 || this.f15526) && this.f15557 != null) {
            if (!this.f15526) {
                m8330();
            }
            ArrayList arrayList = (ArrayList) this.f15557.clone();
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((InterfaceC4068) obj).mo8282();
            }
        }
        m8323();
    }

    public String toString() {
        String str = "ValueAnimator@" + Integer.toHexString(hashCode());
        if (this.f15521 != null) {
            for (int i = 0; i < this.f15521.length; i++) {
                StringBuilder m3017 = AbstractC0844.m3017(str, "\n    ");
                m3017.append(this.f15521[i].toString());
                str = m3017.toString();
            }
        }
        return str;
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final float m8319(float f) {
        if (f < 0.0f) {
            return 0.0f;
        }
        return this.f15514 != -1 ? Math.min(f, r0 + 1) : f;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final Float m8320() {
        C4066[] c4066Arr = this.f15521;
        if (c4066Arr == null || c4066Arr.length <= 0) {
            return null;
        }
        return Float.valueOf(c4066Arr[0].f15480);
    }

    @Override // p328.AbstractC4084
    /* renamed from: ʼˎ */
    public final long mo8287() {
        if (this.f15514 == -1) {
            return -1L;
        }
        return this.f15528 * (r0 + 1);
    }

    @Override // p328.AbstractC4084
    /* renamed from: ʼᐧ */
    public final void mo8288(InterfaceC4064 interfaceC4064) {
        if (interfaceC4064 != null) {
            this.f15512 = interfaceC4064;
        } else {
            this.f15512 = new C4077(3);
        }
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public void mo8321(float f) {
        float f2;
        float interpolation = this.f15512.getInterpolation(f);
        int length = this.f15521.length;
        for (int i = 0; i < length; i++) {
            C4066 c4066 = this.f15521[i];
            C4070 c4070 = c4066.f15484;
            int i2 = c4070.f15508;
            List list = c4070.f15509;
            int i3 = 1;
            if (interpolation <= 0.0f) {
                C4079 c4079 = (C4079) list.get(0);
                C4079 c40792 = (C4079) list.get(1);
                float f3 = c4079.f15547;
                float f4 = c40792.f15547;
                float f5 = c4079.f15545;
                float f6 = (interpolation - f5) / (c40792.f15545 - f5);
                InterfaceC4062 interfaceC4062 = c4070.f15507;
                f2 = interfaceC4062 == null ? AbstractC0001.m23(f4, f3, f6, f3) : ((Float) interfaceC4062.mo8270(f6, Float.valueOf(f3), Float.valueOf(f4))).floatValue();
            } else if (interpolation < 1.0f) {
                C4079 c40793 = (C4079) list.get(0);
                while (true) {
                    if (i3 >= i2) {
                        f2 = ((C4079) list.get(i2 - 1)).f15547;
                        break;
                    }
                    C4079 c40794 = (C4079) list.get(i3);
                    float f7 = c40794.f15545;
                    if (interpolation < f7) {
                        float f8 = c40793.f15545;
                        float f9 = (interpolation - f8) / (f7 - f8);
                        float f10 = c40793.f15547;
                        float f11 = c40794.f15547;
                        InterfaceC4062 interfaceC40622 = c4070.f15507;
                        f2 = interfaceC40622 == null ? AbstractC0001.m23(f11, f10, f9, f10) : ((Float) interfaceC40622.mo8270(f9, Float.valueOf(f10), Float.valueOf(f11))).floatValue();
                    } else {
                        i3++;
                        c40793 = c40794;
                    }
                }
            } else {
                C4079 c40795 = (C4079) list.get(i2 - 2);
                C4079 c40796 = (C4079) list.get(i2 - 1);
                float f12 = c40795.f15547;
                float f13 = c40796.f15547;
                float f14 = c40795.f15545;
                float f15 = (interpolation - f14) / (c40796.f15545 - f14);
                InterfaceC4062 interfaceC40623 = c4070.f15507;
                f2 = interfaceC40623 == null ? AbstractC0001.m23(f13, f12, f15, f12) : ((Float) interfaceC40623.mo8270(f15, Float.valueOf(f12), Float.valueOf(f13))).floatValue();
            }
            c4066.f15480 = f2;
        }
        ArrayList arrayList = this.f15556;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                ((InterfaceC4072) this.f15556.get(i4)).m8314(this);
            }
        }
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public void mo8322() {
        if (this.f15527) {
            return;
        }
        int length = this.f15521.length;
        for (int i = 0; i < length; i++) {
            C4066 c4066 = this.f15521[i];
            if (c4066.f15478 == null) {
                Class cls = c4066.f15483;
                c4066.f15478 = cls == Integer.class ? C4077.f15540 : cls == Float.class ? C4077.f15541 : null;
            }
            InterfaceC4062 interfaceC4062 = c4066.f15478;
            if (interfaceC4062 != null) {
                c4066.f15479.f15507 = interfaceC4062;
            }
        }
        this.f15527 = true;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final void m8323() {
        ArrayList arrayList;
        C4065 m8271;
        ArrayList arrayList2;
        int indexOf;
        if (this.f15513) {
            return;
        }
        if (this.f15519 && (indexOf = (arrayList2 = (m8271 = C4065.m8271()).f15468).indexOf(this)) >= 0) {
            arrayList2.set(indexOf, null);
            m8271.f15467 = true;
        }
        this.f15513 = true;
        boolean z = (this.f15522 || this.f15526) && this.f15557 != null;
        if (z && !this.f15526) {
            m8330();
        }
        this.f15526 = false;
        this.f15522 = false;
        this.f15525 = false;
        this.f15516 = -1L;
        this.f15515 = -1L;
        if (z && (arrayList = this.f15557) != null) {
            ArrayList arrayList3 = (ArrayList) arrayList.clone();
            int size = arrayList3.size();
            for (int i = 0; i < size; i++) {
                ((InterfaceC4068) arrayList3.get(i)).mo8279(this);
            }
        }
        this.f15517 = false;
    }

    @Override // p328.AbstractC4084
    /* renamed from: ˆʾ */
    public boolean mo8293() {
        return this.f15527;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m8324(float f) {
        mo8322();
        float m8319 = m8319(f);
        if (this.f15516 >= 0) {
            this.f15515 = AnimationUtils.currentAnimationTimeMillis() - ((((float) this.f15528) * 1.0f) * m8319);
        } else {
            this.f15524 = m8319;
        }
        this.f15523 = m8319;
        mo8321(m8333(m8319, this.f15517));
    }

    @Override // p328.AbstractC4084
    /* renamed from: ˉʿ */
    public final void mo8295() {
        if (this.f15516 >= 0) {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f15515 = currentAnimationTimeMillis - ((((float) this.f15528) * 1.0f) - (currentAnimationTimeMillis - this.f15515));
            this.f15517 = !this.f15517;
            return;
        }
        if (!this.f15522) {
            m8332(true);
        } else {
            this.f15517 = !this.f15517;
            mo8306();
        }
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final boolean m8325(int i, boolean z) {
        if (i > 0 && this.f15520 == 2) {
            int i2 = this.f15514;
            if (i < i2 + 1 || i2 == -1) {
                return z ? i % 2 == 0 : i % 2 != 0;
            }
        }
        return z;
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public void mo8326(float... fArr) {
        if (fArr.length == 0) {
            return;
        }
        C4066[] c4066Arr = this.f15521;
        if (c4066Arr == null || c4066Arr.length == 0) {
            m8329(new C4066("", fArr));
        } else {
            c4066Arr[0].m8274(fArr);
        }
        this.f15527 = false;
    }

    @Override // p328.AbstractC4084
    /* renamed from: ˏי */
    public final void mo8298(boolean z) {
        this.f15518 = true;
        if (z) {
            mo8295();
        } else {
            mo8299();
        }
        this.f15518 = false;
    }

    @Override // p328.AbstractC4084
    /* renamed from: יـ */
    public void mo8299() {
        m8332(false);
    }

    @Override // p328.AbstractC4084
    /* renamed from: ـˆ, reason: contains not printable characters and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public C4074 clone() {
        C4074 c4074 = (C4074) super.clone();
        if (this.f15556 != null) {
            c4074.f15556 = new ArrayList(this.f15556);
        }
        c4074.f15524 = -1.0f;
        c4074.f15517 = false;
        c4074.f15527 = false;
        c4074.f15522 = false;
        c4074.f15526 = false;
        c4074.f15525 = false;
        c4074.f15515 = -1L;
        c4074.f15513 = false;
        c4074.f15516 = -1L;
        c4074.f15523 = 0.0f;
        c4074.f15519 = true;
        c4074.f15518 = false;
        C4066[] c4066Arr = this.f15521;
        if (c4066Arr != null) {
            int length = c4066Arr.length;
            c4074.f15521 = new C4066[length];
            c4074.f15529 = new HashMap(length);
            for (int i = 0; i < length; i++) {
                C4066 clone = c4066Arr[i].clone();
                c4074.f15521[i] = clone;
                c4074.f15529.put(clone.f15476, clone);
            }
        }
        return c4074;
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final void m8328() {
        this.f15513 = false;
        mo8322();
        this.f15526 = true;
        float f = this.f15524;
        if (f >= 0.0f) {
            this.f15523 = f;
        } else {
            this.f15523 = 0.0f;
        }
        if (this.f15557 != null) {
            m8330();
        }
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final void m8329(C4066... c4066Arr) {
        int length = c4066Arr.length;
        this.f15521 = c4066Arr;
        this.f15529 = new HashMap(length);
        for (C4066 c4066 : c4066Arr) {
            this.f15529.put(c4066.f15476, c4066);
        }
        this.f15527 = false;
    }

    @Override // p328.AbstractC4084
    /* renamed from: ٴﹶ */
    public final boolean mo8302() {
        return this.f15522;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final void m8330() {
        ArrayList arrayList = this.f15557;
        if (arrayList != null && !this.f15525) {
            ArrayList arrayList2 = (ArrayList) arrayList.clone();
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                ((InterfaceC4068) arrayList2.get(i)).mo8280(this);
            }
        }
        this.f15525 = true;
    }

    @Override // p328.AbstractC4084
    /* renamed from: ᴵᵔ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public C4074 mo8305(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(AbstractC3740.m7926("Animators cannot have negative duration: ", j));
        }
        this.f15528 = j;
        return this;
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m8332(boolean z) {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        this.f15517 = z;
        this.f15519 = !this.f15518;
        if (z) {
            float f = this.f15524;
            if (f != -1.0f && f != 0.0f) {
                if (this.f15514 == -1) {
                    double d = f;
                    this.f15524 = 1.0f - ((float) (d - Math.floor(d)));
                } else {
                    this.f15524 = (r3 + 1) - f;
                }
            }
        }
        this.f15522 = true;
        this.f15526 = false;
        this.f15513 = false;
        this.f15516 = -1L;
        this.f15515 = -1L;
        m8328();
        float f2 = this.f15524;
        if (f2 == -1.0f) {
            long j = this.f15528;
            m8324(j > 0 ? ((float) 0) / ((float) j) : 1.0f);
        } else {
            m8324(f2);
        }
        if (this.f15519) {
            AbstractC4084.m8342(this);
        }
    }

    @Override // p328.AbstractC4084
    /* renamed from: ᵔᵢ */
    public final void mo8306() {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        if (!this.f15526) {
            m8328();
            this.f15522 = true;
        } else if (!this.f15527) {
            mo8322();
        }
        mo8321(m8325(this.f15514, this.f15517) ? 0.0f : 1.0f);
        m8323();
    }

    @Override // p328.AbstractC4084
    /* renamed from: ᵔﹳ */
    public final void mo8307(boolean z) {
        mo8322();
        mo8321((this.f15514 % 2 == 1 && this.f15520 == 2) ? 0.0f : z ? 0.0f : 1.0f);
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final float m8333(float f, boolean z) {
        float m8319 = m8319(f);
        float m83192 = m8319(m8319);
        double d = m83192;
        double floor = Math.floor(d);
        if (d == floor && m83192 > 0.0f) {
            floor -= 1.0d;
        }
        int i = (int) floor;
        float f2 = m8319 - i;
        return m8325(i, z) ? 1.0f - f2 : f2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x009f, code lost:
    
        if (r11 != false) goto L49;
     */
    @Override // p328.InterfaceC4081
    /* renamed from: ﹳٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo8309(long r10) {
        /*
            Method dump skipped, instructions count: 185
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p328.C4074.mo8309(long):boolean");
    }

    @Override // p328.AbstractC4084
    /* renamed from: ﾞʻ */
    public final boolean mo8310(long j) {
        if (this.f15519) {
            return false;
        }
        return mo8309(j);
    }
}
