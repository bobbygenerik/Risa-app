package p017;

import java.io.Serializable;

/* renamed from: ʼʻ.ˉـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0966 extends AbstractC0955 implements Serializable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f3923;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final C0966 f3922 = new C0966(0);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final C0966 f3921 = new C0966(1);

    public /* synthetic */ C0966(int i) {
        this.f3923 = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f3923) {
            case 0:
                Comparable comparable = (Comparable) obj;
                Comparable comparable2 = (Comparable) obj2;
                comparable.getClass();
                comparable2.getClass();
                return comparable.compareTo(comparable2);
            default:
                Comparable comparable3 = (Comparable) obj;
                Comparable comparable4 = (Comparable) obj2;
                comparable3.getClass();
                if (comparable3 == comparable4) {
                    return 0;
                }
                return comparable4.compareTo(comparable3);
        }
    }

    public final String toString() {
        switch (this.f3923) {
            case 0:
                return "Ordering.natural()";
            default:
                return "Ordering.natural().reverse()";
        }
    }

    @Override // p017.AbstractC0955
    /* renamed from: ﹳٴ */
    public final AbstractC0955 mo3242() {
        switch (this.f3923) {
            case 0:
                return f3921;
            default:
                return f3922;
        }
    }
}
