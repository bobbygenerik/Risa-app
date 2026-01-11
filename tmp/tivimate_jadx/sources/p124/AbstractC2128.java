package p124;

import android.os.Build;
import android.view.View;
import java.nio.ByteBuffer;
import java.util.ConcurrentModificationException;
import p186.AbstractC2823;
import p186.C2833;
import p186.C2835;
import p391.C4641;
import ٴﾞ.ˆʾ;

/* renamed from: ˈˏ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2128 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f8312;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f8313;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Object f8314;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f8315;

    public AbstractC2128() {
        if (ˆʾ.ʽʽ == null) {
            ˆʾ.ʽʽ = new ˆʾ(13);
        }
    }

    public boolean hasNext() {
        return this.f8313 < ((C4641) this.f8314).f17336;
    }

    public void remove() {
        C4641 c4641 = (C4641) this.f8314;
        m5091();
        if (this.f8315 == -1) {
            throw new IllegalStateException("Call next() before removing element from the iterator.");
        }
        c4641.m9207();
        c4641.m9206(this.f8315);
        this.f8315 = -1;
        this.f8312 = c4641.f17335;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public abstract Object mo5087(View view);

    /* renamed from: ˈ, reason: contains not printable characters */
    public abstract void mo5088(View view, Object obj);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void m5089() {
        while (true) {
            int i = this.f8313;
            C4641 c4641 = (C4641) this.f8314;
            if (i >= c4641.f17336 || c4641.f17331[i] >= 0) {
                return;
            } else {
                this.f8313 = i + 1;
            }
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public abstract boolean mo5090(Object obj, Object obj2);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m5091() {
        if (((C4641) this.f8314).f17335 != this.f8312) {
            throw new ConcurrentModificationException();
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int m5092(int i) {
        if (i < this.f8312) {
            return ((ByteBuffer) this.f8314).getShort(this.f8315 + i);
        }
        return 0;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public void m5093(View view, Object obj) {
        Object tag;
        if (Build.VERSION.SDK_INT >= this.f8315) {
            mo5088(view, obj);
            return;
        }
        if (Build.VERSION.SDK_INT >= this.f8315) {
            tag = mo5087(view);
        } else {
            tag = view.getTag(this.f8313);
            if (!((Class) this.f8314).isInstance(tag)) {
                tag = null;
            }
        }
        if (mo5090(tag, obj)) {
            View.AccessibilityDelegate m6272 = AbstractC2823.m6272(view);
            C2833 c2833 = m6272 == null ? null : m6272 instanceof C2835 ? ((C2835) m6272).f10636 : new C2833(m6272);
            if (c2833 == null) {
                c2833 = new C2833();
            }
            AbstractC2823.m6273(view, c2833);
            view.setTag(this.f8313, obj);
            AbstractC2823.m6279(view, this.f8312);
        }
    }
}
