package p438;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import p150.C2422;
import p150.InterfaceC2417;
import p152.AbstractC2444;
import p246.InterfaceC3291;
import p329.InterfaceC4104;
import p430.AbstractC5099;
import p430.C5097;
import p430.C5110;
import ˈˆ.ﾞᴵ;
import ˈˊ.ˉˆ;
import ᐧᵎ.ˆʾ;
import ᴵˋ.ˊʻ;
import ᵔʻ.ٴʼ;

/* renamed from: ﹶٴ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C5173 implements InterfaceC2417, InterfaceC5180 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final Object f19469;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f19470;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final Object f19471;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f19472 = -1;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String[] f19473;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final Object f19474;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean[] f19475;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public Object f19476;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC5175 f19477;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f19478;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final List[] f19479;

    public C5173(String str, InterfaceC5175 interfaceC5175, int i) {
        this.f19478 = str;
        this.f19477 = interfaceC5175;
        this.f19470 = i;
        String[] strArr = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            strArr[i2] = "[UNINITIALIZED]";
        }
        this.f19473 = strArr;
        int i3 = this.f19470;
        this.f19479 = new List[i3];
        this.f19475 = new boolean[i3];
        this.f19476 = C5110.f19215;
        final int i4 = 0;
        this.f19469 = ﾞᴵ.ˉٴ(2, new InterfaceC4104(this) { // from class: ﹶٴ.ﾞʻ

            /* renamed from: ᴵˊ, reason: contains not printable characters */
            public final /* synthetic */ C5173 f19493;

            {
                this.f19493 = this;
            }

            /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, ʻᵢ.ʽ] */
            @Override // p329.InterfaceC4104
            /* renamed from: ʽ */
            public final Object mo716() {
                switch (i4) {
                    case 0:
                        return this.f19493.f19477.mo4338();
                    default:
                        C5173 c5173 = this.f19493;
                        int hashCode = (c5173.mo5525().hashCode() * 31) + Arrays.hashCode((InterfaceC2417[]) c5173.f19471.getValue());
                        int mo5522 = c5173.mo5522();
                        int i5 = 1;
                        while (true) {
                            int i6 = 0;
                            if (mo5522 > 0) {
                                int i7 = mo5522 - 1;
                                int i8 = i5 * 31;
                                String mo5525 = c5173.mo5521(c5173.mo5522() - mo5522).mo5525();
                                if (mo5525 != null) {
                                    i6 = mo5525.hashCode();
                                }
                                i5 = i8 + i6;
                                mo5522 = i7;
                            } else {
                                int mo55222 = c5173.mo5522();
                                int i9 = 1;
                                while (true) {
                                    if (!(mo55222 > 0)) {
                                        return Integer.valueOf((((hashCode * 31) + i5) * 31) + i9);
                                    }
                                    int i10 = mo55222 - 1;
                                    int i11 = i9 * 31;
                                    ˊʻ mo5520 = c5173.mo5521(c5173.mo5522() - mo55222).mo5520();
                                    i9 = i11 + (mo5520 != null ? mo5520.hashCode() : 0);
                                    mo55222 = i10;
                                }
                            }
                        }
                }
            }
        });
        this.f19471 = ﾞᴵ.ˉٴ(2, new ٴʼ(this));
        final int i5 = 1;
        this.f19474 = ﾞᴵ.ˉٴ(2, new InterfaceC4104(this) { // from class: ﹶٴ.ﾞʻ

            /* renamed from: ᴵˊ, reason: contains not printable characters */
            public final /* synthetic */ C5173 f19493;

            {
                this.f19493 = this;
            }

            /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, ʻᵢ.ʽ] */
            @Override // p329.InterfaceC4104
            /* renamed from: ʽ */
            public final Object mo716() {
                switch (i5) {
                    case 0:
                        return this.f19493.f19477.mo4338();
                    default:
                        C5173 c5173 = this.f19493;
                        int hashCode = (c5173.mo5525().hashCode() * 31) + Arrays.hashCode((InterfaceC2417[]) c5173.f19471.getValue());
                        int mo5522 = c5173.mo5522();
                        int i52 = 1;
                        while (true) {
                            int i6 = 0;
                            if (mo5522 > 0) {
                                int i7 = mo5522 - 1;
                                int i8 = i52 * 31;
                                String mo5525 = c5173.mo5521(c5173.mo5522() - mo5522).mo5525();
                                if (mo5525 != null) {
                                    i6 = mo5525.hashCode();
                                }
                                i52 = i8 + i6;
                                mo5522 = i7;
                            } else {
                                int mo55222 = c5173.mo5522();
                                int i9 = 1;
                                while (true) {
                                    if (!(mo55222 > 0)) {
                                        return Integer.valueOf((((hashCode * 31) + i52) * 31) + i9);
                                    }
                                    int i10 = mo55222 - 1;
                                    int i11 = i9 * 31;
                                    ˊʻ mo5520 = c5173.mo5521(c5173.mo5522() - mo55222).mo5520();
                                    i9 = i11 + (mo5520 != null ? mo5520.hashCode() : 0);
                                    mo55222 = i10;
                                }
                            }
                        }
                }
            }
        });
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object, ʻᵢ.ʽ] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Object, ʻᵢ.ʽ] */
    public boolean equals(Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj instanceof C5173) {
            InterfaceC2417 interfaceC2417 = (InterfaceC2417) obj;
            if (this.f19478.equals(interfaceC2417.mo5525()) && Arrays.equals((InterfaceC2417[]) this.f19471.getValue(), (InterfaceC2417[]) ((C5173) obj).f19471.getValue())) {
                int mo5522 = interfaceC2417.mo5522();
                int i2 = this.f19470;
                if (i2 == mo5522) {
                    for (0; i < i2; i + 1) {
                        i = (AbstractC2444.m5562(mo5521(i).mo5525(), interfaceC2417.mo5521(i).mo5525()) && AbstractC2444.m5562(mo5521(i).mo5520(), interfaceC2417.mo5521(i).mo5520())) ? i + 1 : 0;
                    }
                    return true;
                }
            }
        }
        return false;
    }

    @Override // p150.InterfaceC2417
    public final List getAnnotations() {
        return C5097.f19202;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ʻᵢ.ʽ] */
    public int hashCode() {
        return ((Number) this.f19474.getValue()).intValue();
    }

    public final String toString() {
        return AbstractC5099.m10034(ˉˆ.ˉٴ(0, this.f19470), ", ", this.f19478.concat("("), ")", new ˆʾ(24, this), 24);
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ʼˎ */
    public final List mo5519(int i) {
        List list = this.f19479[i];
        return list == null ? C5097.f19202 : list;
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ʽ */
    public final ˊʻ mo5520() {
        return C2422.f9351;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ʻᵢ.ʽ] */
    @Override // p150.InterfaceC2417
    /* renamed from: ˆʾ */
    public final InterfaceC2417 mo5521(int i) {
        return ((InterfaceC3291[]) this.f19469.getValue())[i].mo4337();
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ˈ */
    public final int mo5522() {
        return this.f19470;
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ˑﹳ */
    public final String mo5523(int i) {
        return this.f19473[i];
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m10157(String str, boolean z) {
        int i = this.f19472 + 1;
        this.f19472 = i;
        String[] strArr = this.f19473;
        strArr[i] = str;
        this.f19475[i] = z;
        this.f19479[i] = null;
        if (i == this.f19470 - 1) {
            HashMap hashMap = new HashMap();
            int length = strArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                hashMap.put(strArr[i2], Integer.valueOf(i2));
            }
            this.f19476 = hashMap;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object] */
    @Override // p438.InterfaceC5180
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Set mo10158() {
        return this.f19476.keySet();
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ᵔᵢ */
    public final boolean mo5524() {
        return false;
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ⁱˊ */
    public final String mo5525() {
        return this.f19478;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object] */
    @Override // p150.InterfaceC2417
    /* renamed from: ﹳٴ */
    public final int mo5526(String str) {
        Integer num = (Integer) this.f19476.get(str);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ﾞᴵ */
    public boolean mo5527() {
        return false;
    }
}
