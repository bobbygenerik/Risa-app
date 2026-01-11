package androidx.leanback.widget;

import android.graphics.PointF;
import android.graphics.Rect;
import android.util.Property;
import android.view.View;
import androidx.appcompat.widget.SwitchCompat;
import p223.C3056;
import p230.AbstractC3168;
import p230.C3154;
import p230.C3185;

/* renamed from: androidx.leanback.widget.ʿᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0097 extends Property {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f883;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0097(Class cls, String str, int i) {
        super(cls, str);
        this.f883 = i;
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        switch (this.f883) {
            case 0:
                return Float.valueOf(((C0139) obj).f992);
            case 1:
                return Float.valueOf(((C0139) obj).f988);
            case 2:
                return Float.valueOf(((C0139) obj).f985);
            case 3:
                return Integer.valueOf(((AbstractC0093) obj).getStreamPosition());
            case 4:
                return Float.valueOf(((SwitchCompat) obj).f168);
            case 5:
                return null;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return null;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return null;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return null;
            case 9:
                return null;
            case 10:
                return null;
            case 11:
                return null;
            case 12:
                return null;
            case 13:
                return null;
            case 14:
                return null;
            case 15:
                return Float.valueOf(AbstractC3168.f12105.mo5067((View) obj));
            default:
                return ((View) obj).getClipBounds();
        }
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        switch (this.f883) {
            case 0:
                C0139 c0139 = (C0139) obj;
                c0139.f992 = ((Float) obj2).floatValue();
                c0139.m649();
                c0139.f986.invalidate();
                return;
            case 1:
                C0139 c01392 = (C0139) obj;
                float floatValue = ((Float) obj2).floatValue();
                c01392.f988 = floatValue;
                float f = floatValue / 2.0f;
                c01392.f993 = f;
                PagingIndicator pagingIndicator = c01392.f986;
                c01392.f989 = f * pagingIndicator.f687;
                pagingIndicator.invalidate();
                return;
            case 2:
                C0139 c01393 = (C0139) obj;
                c01393.f985 = ((Float) obj2).floatValue() * c01393.f990 * c01393.f984;
                c01393.f986.invalidate();
                return;
            case 3:
                ((AbstractC0093) obj).setStreamPosition(((Integer) obj2).intValue());
                return;
            case 4:
                ((SwitchCompat) obj).setThumbPosition(((Float) obj2).floatValue());
                return;
            case 5:
                C3154 c3154 = (C3154) obj;
                PointF pointF = (PointF) obj2;
                c3154.getClass();
                c3154.f12075 = Math.round(pointF.x);
                int round = Math.round(pointF.y);
                c3154.f12074 = round;
                int i = c3154.f12076 + 1;
                c3154.f12076 = i;
                if (i == c3154.f12073) {
                    AbstractC3168.m6980(c3154.f12072, c3154.f12075, round, c3154.f12070, c3154.f12071);
                    c3154.f12076 = 0;
                    c3154.f12073 = 0;
                    return;
                }
                return;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                C3154 c31542 = (C3154) obj;
                PointF pointF2 = (PointF) obj2;
                c31542.getClass();
                c31542.f12070 = Math.round(pointF2.x);
                int round2 = Math.round(pointF2.y);
                c31542.f12071 = round2;
                int i2 = c31542.f12073 + 1;
                c31542.f12073 = i2;
                if (c31542.f12076 == i2) {
                    AbstractC3168.m6980(c31542.f12072, c31542.f12075, c31542.f12074, c31542.f12070, round2);
                    c31542.f12076 = 0;
                    c31542.f12073 = 0;
                    return;
                }
                return;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                View view = (View) obj;
                PointF pointF3 = (PointF) obj2;
                AbstractC3168.m6980(view, view.getLeft(), view.getTop(), Math.round(pointF3.x), Math.round(pointF3.y));
                return;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                View view2 = (View) obj;
                PointF pointF4 = (PointF) obj2;
                AbstractC3168.m6980(view2, Math.round(pointF4.x), Math.round(pointF4.y), view2.getRight(), view2.getBottom());
                return;
            case 9:
                View view3 = (View) obj;
                PointF pointF5 = (PointF) obj2;
                int round3 = Math.round(pointF5.x);
                int round4 = Math.round(pointF5.y);
                AbstractC3168.m6980(view3, round3, round4, view3.getWidth() + round3, view3.getHeight() + round4);
                return;
            case 10:
                C3185 c3185 = (C3185) obj;
                PointF pointF6 = (PointF) obj2;
                c3185.getClass();
                c3185.f12155 = Math.round(pointF6.x);
                int round5 = Math.round(pointF6.y);
                c3185.f12154 = round5;
                int i3 = c3185.f12156 + 1;
                c3185.f12156 = i3;
                if (i3 == c3185.f12153) {
                    AbstractC3168.m6980(c3185.f12152, c3185.f12155, round5, c3185.f12150, c3185.f12151);
                    c3185.f12156 = 0;
                    c3185.f12153 = 0;
                    return;
                }
                return;
            case 11:
                C3185 c31852 = (C3185) obj;
                PointF pointF7 = (PointF) obj2;
                c31852.getClass();
                c31852.f12150 = Math.round(pointF7.x);
                int round6 = Math.round(pointF7.y);
                c31852.f12151 = round6;
                int i4 = c31852.f12153 + 1;
                c31852.f12153 = i4;
                if (c31852.f12156 == i4) {
                    AbstractC3168.m6980(c31852.f12152, c31852.f12155, c31852.f12154, c31852.f12150, round6);
                    c31852.f12156 = 0;
                    c31852.f12153 = 0;
                    return;
                }
                return;
            case 12:
                View view4 = (View) obj;
                PointF pointF8 = (PointF) obj2;
                AbstractC3168.m6980(view4, view4.getLeft(), view4.getTop(), Math.round(pointF8.x), Math.round(pointF8.y));
                return;
            case 13:
                View view5 = (View) obj;
                PointF pointF9 = (PointF) obj2;
                AbstractC3168.m6980(view5, Math.round(pointF9.x), Math.round(pointF9.y), view5.getRight(), view5.getBottom());
                return;
            case 14:
                View view6 = (View) obj;
                PointF pointF10 = (PointF) obj2;
                int round7 = Math.round(pointF10.x);
                int round8 = Math.round(pointF10.y);
                AbstractC3168.m6980(view6, round7, round8, view6.getWidth() + round7, view6.getHeight() + round8);
                return;
            case 15:
                float floatValue2 = ((Float) obj2).floatValue();
                AbstractC3168.f12105.mo5068((View) obj, floatValue2);
                return;
            default:
                ((View) obj).setClipBounds((Rect) obj2);
                return;
        }
    }
}
