package p017;

import com.google.android.gms.internal.play_billing.י;
import java.util.Iterator;
import java.util.ListIterator;

/* renamed from: ʼʻ.ˉٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0967 extends AbstractC0993 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final transient int f3924;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final transient int f3925;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0993 f3926;

    public C0967(AbstractC0993 abstractC0993, int i, int i2) {
        this.f3926 = abstractC0993;
        this.f3924 = i;
        this.f3925 = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        י.ᵎﹶ(i, this.f3925);
        return this.f3926.get(i + this.f3924);
    }

    @Override // p017.AbstractC0993, p017.AbstractC0962, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // p017.AbstractC0993, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // p017.AbstractC0993, java.util.List
    public final /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
        return listIterator(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3925;
    }

    @Override // p017.AbstractC0993, java.util.List
    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final AbstractC0993 subList(int i, int i2) {
        י.ˆʾ(i, i2, this.f3925);
        int i3 = this.f3924;
        return this.f3926.subList(i + i3, i2 + i3);
    }

    @Override // p017.AbstractC0962
    /* renamed from: ˈ */
    public final Object[] mo3221() {
        return this.f3926.mo3221();
    }

    @Override // p017.AbstractC0962
    /* renamed from: ˑﹳ */
    public final int mo3222() {
        return this.f3926.mo3224() + this.f3924 + this.f3925;
    }

    @Override // p017.AbstractC0962
    /* renamed from: ᵎﹶ */
    public final boolean mo3205() {
        return true;
    }

    @Override // p017.AbstractC0962
    /* renamed from: ﾞᴵ */
    public final int mo3224() {
        return this.f3926.mo3224() + this.f3924;
    }
}
