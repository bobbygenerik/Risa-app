package p363;

import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.appcompat.widget.ContentFrameLayout;
import p136.C2219;
import ᴵˋ.ˊʻ;

/* renamed from: ᵔᵢ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4409 extends ContentFrameLayout {

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final /* synthetic */ LayoutInflaterFactory2C4430 f16397;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4409(LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430, C2219 c2219) {
        super(c2219, null);
        this.f16397 = layoutInflaterFactory2C4430;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.f16397.m8961(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (x < -5 || y < -5 || x > getWidth() + 5 || y > getHeight() + 5) {
                LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = this.f16397;
                layoutInflaterFactory2C4430.m8970(layoutInflaterFactory2C4430.m8969(0), true);
                return true;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        setBackgroundDrawable(ˊʻ.ﹳᐧ(getContext(), i));
    }
}
