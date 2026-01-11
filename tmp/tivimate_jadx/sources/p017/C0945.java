package p017;

/* renamed from: ʼʻ.ʻᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0945 extends AbstractC0997 {

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static final C0945 f3878;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final Object[] f3879;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final transient Object[] f3880;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final transient int f3881;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final transient Object[] f3882;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final transient int f3883;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final transient int f3884;

    static {
        Object[] objArr = new Object[0];
        f3879 = objArr;
        f3878 = new C0945(0, 0, 0, objArr, objArr);
    }

    public C0945(int i, int i2, int i3, Object[] objArr, Object[] objArr2) {
        this.f3880 = objArr;
        this.f3884 = i;
        this.f3882 = objArr2;
        this.f3883 = i2;
        this.f3881 = i3;
    }

    @Override // p017.AbstractC0962, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.f3882;
            if (objArr.length != 0) {
                int m3295 = AbstractC1004.m3295(obj);
                while (true) {
                    int i = m3295 & this.f3883;
                    Object obj2 = objArr[i];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    m3295 = i + 1;
                }
            }
        }
        return false;
    }

    @Override // p017.AbstractC0997, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f3884;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f3881;
    }

    @Override // p017.AbstractC0962
    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object[] mo3221() {
        return this.f3880;
    }

    @Override // p017.AbstractC0962
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int mo3222() {
        return this.f3881;
    }

    @Override // p017.AbstractC0962
    /* renamed from: ᵎﹶ */
    public final boolean mo3205() {
        return false;
    }

    @Override // p017.AbstractC0962
    /* renamed from: ᵔᵢ */
    public final AbstractC0983 iterator() {
        return mo3208().listIterator(0);
    }

    @Override // p017.AbstractC0962
    /* renamed from: ⁱˊ */
    public final int mo3207(int i, Object[] objArr) {
        Object[] objArr2 = this.f3880;
        int i2 = this.f3881;
        System.arraycopy(objArr2, 0, objArr, i, i2);
        return i + i2;
    }

    @Override // p017.AbstractC0997
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final AbstractC0993 mo3223() {
        return AbstractC0993.m3259(this.f3881, this.f3880);
    }

    @Override // p017.AbstractC0962
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int mo3224() {
        return 0;
    }
}
