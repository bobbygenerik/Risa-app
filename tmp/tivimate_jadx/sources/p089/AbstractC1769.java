package p089;

import java.util.Arrays;
import p013.C0907;
import p126.InterfaceC2136;

/* renamed from: ʿᵔ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1769 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f7154;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public AbstractC1757[] f7155;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f7156;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final AbstractC1757 m4728() {
        AbstractC1757 abstractC1757;
        synchronized (this) {
            try {
                AbstractC1757[] abstractC1757Arr = this.f7155;
                if (abstractC1757Arr == null) {
                    abstractC1757Arr = mo4731();
                    this.f7155 = abstractC1757Arr;
                } else if (this.f7156 >= abstractC1757Arr.length) {
                    Object[] copyOf = Arrays.copyOf(abstractC1757Arr, abstractC1757Arr.length * 2);
                    this.f7155 = (AbstractC1757[]) copyOf;
                    abstractC1757Arr = (AbstractC1757[]) copyOf;
                }
                int i = this.f7154;
                do {
                    abstractC1757 = abstractC1757Arr[i];
                    if (abstractC1757 == null) {
                        abstractC1757 = mo4729();
                        abstractC1757Arr[i] = abstractC1757;
                    }
                    i++;
                    if (i >= abstractC1757Arr.length) {
                        i = 0;
                    }
                } while (!abstractC1757.mo4717(this));
                this.f7154 = i;
                this.f7156++;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC1757;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public abstract AbstractC1757 mo4729();

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m4730(AbstractC1757 abstractC1757) {
        int i;
        InterfaceC2136[] mo4716;
        synchronized (this) {
            try {
                int i2 = this.f7156 - 1;
                this.f7156 = i2;
                if (i2 == 0) {
                    this.f7154 = 0;
                }
                mo4716 = abstractC1757.mo4716(this);
            } catch (Throwable th) {
                throw th;
            }
        }
        for (InterfaceC2136 interfaceC2136 : mo4716) {
            if (interfaceC2136 != null) {
                interfaceC2136.mo3549(C0907.f3832);
            }
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public abstract AbstractC1757[] mo4731();
}
