package androidx.leanback.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import ar.tvplayer.tv.R;

/* loaded from: classes.dex */
class MediaRowFocusView extends View {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f671;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Paint f672;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final RectF f673;

    public MediaRowFocusView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f673 = new RectF();
        Paint paint = new Paint();
        paint.setColor(context.getResources().getColor(R.color.2rd));
        this.f672 = paint;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        this.f671 = height;
        int height2 = ((height * 2) - getHeight()) / 2;
        float f = -height2;
        float width = getWidth();
        float height3 = getHeight() + height2;
        RectF rectF = this.f673;
        rectF.set(0.0f, f, width, height3);
        int i = this.f671;
        canvas.drawRoundRect(rectF, i, i, this.f672);
    }
}
