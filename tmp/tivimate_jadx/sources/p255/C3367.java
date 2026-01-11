package p255;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p386.InterfaceC4615;

/* renamed from: יـ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3367 implements Iterator, InterfaceC4615 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f13162;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f13163;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ int f13164;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f13165;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ Object f13166;

    public C3367(int i) {
        this.f13163 = i;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C3367(C3359 c3359, int i) {
        this(c3359.f13167);
        this.f13164 = i;
        switch (i) {
            case 1:
                this.f13166 = c3359;
                this(c3359.f13167);
                return;
            default:
                this.f13166 = c3359;
                return;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C3367(C3370 c3370) {
        this(c3370.f13176);
        this.f13164 = 2;
        this.f13166 = c3370;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f13165 < this.f13163;
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object m7225;
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f13165;
        switch (this.f13164) {
            case 0:
                m7225 = ((C3359) this.f13166).m7225(i);
                break;
            case 1:
                m7225 = ((C3359) this.f13166).m7220(i);
                break;
            default:
                m7225 = ((C3370) this.f13166).f13178[i];
                break;
        }
        this.f13165++;
        this.f13162 = true;
        return m7225;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f13162) {
            throw new IllegalStateException("Call next() before removing an element.");
        }
        int i = this.f13165 - 1;
        this.f13165 = i;
        switch (this.f13164) {
            case 0:
                ((C3359) this.f13166).mo4688(i);
                break;
            case 1:
                ((C3359) this.f13166).mo4688(i);
                break;
            default:
                ((C3370) this.f13166).m7231(i);
                break;
        }
        this.f13163--;
        this.f13162 = false;
    }
}
