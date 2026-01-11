package p257;

/* renamed from: יᐧ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3395 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f13261;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String m7288() {
        switch (this.f13261) {
            case 0:
                return "ByteArrayPool";
            default:
                return "IntegerArrayPool";
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m7289() {
        switch (this.f13261) {
            case 0:
                return 1;
            default:
                return 4;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m7290(Object obj) {
        switch (this.f13261) {
            case 0:
                return ((byte[]) obj).length;
            default:
                return ((int[]) obj).length;
        }
    }
}
