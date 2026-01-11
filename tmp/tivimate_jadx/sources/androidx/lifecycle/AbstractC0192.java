package androidx.lifecycle;

/* renamed from: androidx.lifecycle.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0192 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f1088 = -1;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC0187 f1089;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0161 f1090;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f1091;

    public AbstractC0192(AbstractC0161 abstractC0161, InterfaceC0187 interfaceC0187) {
        this.f1090 = abstractC0161;
        this.f1089 = interfaceC0187;
    }

    /* renamed from: ʽ */
    public boolean mo692(InterfaceC0162 interfaceC0162) {
        return false;
    }

    /* renamed from: ˈ */
    public abstract boolean mo693();

    /* renamed from: ⁱˊ */
    public void mo694() {
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m725(boolean z) {
        if (z == this.f1091) {
            return;
        }
        this.f1091 = z;
        int i = z ? 1 : -1;
        AbstractC0161 abstractC0161 = this.f1090;
        int i2 = abstractC0161.f1040;
        abstractC0161.f1040 = i + i2;
        if (!abstractC0161.f1042) {
            abstractC0161.f1042 = true;
            while (true) {
                try {
                    int i3 = abstractC0161.f1040;
                    if (i2 == i3) {
                        break;
                    }
                    boolean z2 = i2 == 0 && i3 > 0;
                    boolean z3 = i2 > 0 && i3 == 0;
                    if (z2) {
                        abstractC0161.mo687();
                    } else if (z3) {
                        abstractC0161.mo688();
                    }
                    i2 = i3;
                } catch (Throwable th) {
                    abstractC0161.f1042 = false;
                    throw th;
                }
            }
            abstractC0161.f1042 = false;
        }
        if (this.f1091) {
            abstractC0161.m682(this);
        }
    }
}
