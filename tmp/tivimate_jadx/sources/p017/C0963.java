package p017;

import java.io.Serializable;
import java.util.ArrayList;
import p095.InterfaceC1882;

/* renamed from: ʼʻ.ˈⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0963 implements InterfaceC1882, Serializable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f3917;

    public C0963() {
        AbstractC1004.m3282(2, "expectedValuesPerKey");
        this.f3917 = 2;
    }

    @Override // p095.InterfaceC1882
    public final Object get() {
        return new ArrayList(this.f3917);
    }
}
