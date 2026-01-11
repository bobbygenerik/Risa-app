package p435;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p013.C0913;
import p029.C1125;
import p035.AbstractC1220;
import p081.C1716;
import p081.C1718;
import p329.InterfaceC4087;
import p386.InterfaceC4615;
import ˈˊ.ˉˆ;

/* renamed from: ﹶˑ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5153 implements Iterator, InterfaceC4615 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f19426;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f19427 = -1;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C1716 f19428;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f19429;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ C1125 f19430;

    public C5153(C1125 c1125) {
        this.f19430 = c1125;
        int length = ((CharSequence) c1125.f4389).length();
        if (length < 0) {
            throw new IllegalArgumentException(AbstractC1220.m3773(length, "Cannot coerce value to an empty range: maximum ", " is less than minimum 0."));
        }
        length = length >= 0 ? 0 : length;
        this.f19429 = length;
        this.f19426 = length;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f19427 == -1) {
            m10151();
        }
        return this.f19427 == 1;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f19427 == -1) {
            m10151();
        }
        if (this.f19427 == 0) {
            throw new NoSuchElementException();
        }
        C1716 c1716 = this.f19428;
        this.f19428 = null;
        this.f19427 = -1;
        return c1716;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [ʿˈ.ʽ, ʿˈ.ﹳٴ] */
    /* JADX WARN: Type inference failed for: r0v9, types: [ʿˈ.ʽ, ʿˈ.ﹳٴ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m10151() {
        C1125 c1125 = this.f19430;
        CharSequence charSequence = (CharSequence) c1125.f4389;
        int i = this.f19426;
        if (i < 0) {
            this.f19427 = 0;
            this.f19428 = null;
            return;
        }
        if (i > charSequence.length()) {
            this.f19428 = new C1718(this.f19429, AbstractC5143.m10112(charSequence), 1);
            this.f19426 = -1;
        } else {
            C0913 c0913 = (C0913) ((InterfaceC4087) c1125.f4388).mo3749(charSequence, Integer.valueOf(this.f19426));
            if (c0913 == null) {
                this.f19428 = new C1718(this.f19429, AbstractC5143.m10112(charSequence), 1);
                this.f19426 = -1;
            } else {
                int intValue = ((Number) c0913.f3836).intValue();
                int intValue2 = ((Number) c0913.f3837).intValue();
                this.f19428 = ˉˆ.ˉٴ(this.f19429, intValue);
                int i2 = intValue + intValue2;
                this.f19429 = i2;
                this.f19426 = i2 + (intValue2 == 0 ? 1 : 0);
            }
        }
        this.f19427 = 1;
    }
}
