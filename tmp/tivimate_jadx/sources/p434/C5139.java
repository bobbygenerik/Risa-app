package p434;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import androidx.recyclerview.widget.RecyclerView;
import ar.tvplayer.tv.R;
import com.google.android.material.carousel.CarouselLayoutManager;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p179.AbstractC2704;
import p349.AbstractC4293;

/* renamed from: ﹶˏ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5139 extends AbstractC2704 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final List f19410;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Paint f19411;

    public C5139() {
        Paint paint = new Paint();
        this.f19411 = paint;
        this.f19410 = DesugarCollections.unmodifiableList(new ArrayList());
        paint.setStrokeWidth(5.0f);
        paint.setColor(-65281);
    }

    @Override // p179.AbstractC2704
    /* renamed from: ʽ */
    public final void mo3085(Canvas canvas, RecyclerView recyclerView) {
        Canvas canvas2;
        float dimension = recyclerView.getResources().getDimension(R.dimen.2r4);
        Paint paint = this.f19411;
        paint.setStrokeWidth(dimension);
        Iterator it = this.f19410.iterator();
        while (it.hasNext()) {
            ((AbstractC5137) it.next()).getClass();
            ThreadLocal threadLocal = AbstractC4293.f15892;
            float f = 1.0f - 0.0f;
            paint.setColor(Color.argb((int) ((Color.alpha(-16776961) * 0.0f) + (Color.alpha(-65281) * f)), (int) ((Color.red(-16776961) * 0.0f) + (Color.red(-65281) * f)), (int) ((Color.green(-16776961) * 0.0f) + (Color.green(-65281) * f)), (int) ((Color.blue(-16776961) * 0.0f) + (Color.blue(-65281) * f))));
            if (((CarouselLayoutManager) recyclerView.getLayoutManager()).m2378()) {
                canvas2 = canvas;
                canvas2.drawLine(0.0f, ((CarouselLayoutManager) recyclerView.getLayoutManager()).f2664.mo3179(), 0.0f, ((CarouselLayoutManager) recyclerView.getLayoutManager()).f2664.mo3180(), paint);
            } else {
                canvas2 = canvas;
                canvas2.drawLine(((CarouselLayoutManager) recyclerView.getLayoutManager()).f2664.mo3181(), 0.0f, ((CarouselLayoutManager) recyclerView.getLayoutManager()).f2664.mo3172(), 0.0f, paint);
            }
            canvas = canvas2;
        }
    }
}
