package p010;

import p238.InterfaceC3203;

/* renamed from: ʻٴ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0843 implements InterfaceC3203 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object[] f3599;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f3600;

    public C0843() {
        this.f3599 = new Object[256];
    }

    public C0843(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f3599 = new Object[i];
    }

    @Override // p238.InterfaceC3203
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean mo3014(Object obj) {
        Object[] objArr;
        boolean z;
        int i = this.f3600;
        int i2 = 0;
        while (true) {
            objArr = this.f3599;
            if (i2 >= i) {
                z = false;
                break;
            }
            if (objArr[i2] == obj) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            throw new IllegalStateException("Already in the pool!");
        }
        int i3 = this.f3600;
        if (i3 >= objArr.length) {
            return false;
        }
        objArr[i3] = obj;
        this.f3600 = i3 + 1;
        return true;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m3015(C0846 c0846) {
        int i = this.f3600;
        Object[] objArr = this.f3599;
        if (i < objArr.length) {
            objArr[i] = c0846;
            this.f3600 = i + 1;
        }
    }

    @Override // p238.InterfaceC3203
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public Object mo3016() {
        int i = this.f3600;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object[] objArr = this.f3599;
        Object obj = objArr[i2];
        objArr[i2] = null;
        this.f3600 = i - 1;
        return obj;
    }
}
