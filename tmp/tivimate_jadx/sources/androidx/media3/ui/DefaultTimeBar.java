package androidx.media3.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;
import p283.RunnableC3568;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p312.AbstractC3866;
import p312.C3883;
import p312.InterfaceC3850;
import p312.InterfaceC3875;

/* loaded from: classes.dex */
public class DefaultTimeBar extends View implements InterfaceC3875 {

    /* renamed from: ˑ, reason: contains not printable characters */
    public static final /* synthetic */ int f1259 = 0;

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public boolean f1260;

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public Rect f1261;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final int f1262;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Rect f1263;

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public long f1264;

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public final int f1265;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Rect f1266;

    /* renamed from: ʿ, reason: contains not printable characters */
    public final CopyOnWriteArraySet f1267;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final Point f1268;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public int f1269;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final int f1270;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public boolean f1271;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final RectF f1272;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final Formatter f1273;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public long f1274;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final Paint f1275;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final Paint f1276;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final int f1277;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public final ValueAnimator f1278;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final int f1279;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public long f1280;

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public long f1281;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final int f1282;

    /* renamed from: י, reason: contains not printable characters */
    public int f1283;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final int f1284;

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public long f1285;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public float f1286;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final Paint f1287;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final Paint f1288;

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public long f1289;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public long f1290;

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public float f1291;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public int f1292;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public int f1293;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Rect f1294;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final RunnableC3568 f1295;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final RectF f1296;

    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public long f1297;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final Paint f1298;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public final float f1299;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final Paint f1300;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final Drawable f1301;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final int f1302;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final StringBuilder f1303;

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public boolean f1304;

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public boolean f1305;

    public DefaultTimeBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, attributeSet, 0);
    }

    public DefaultTimeBar(Context context, AttributeSet attributeSet, AttributeSet attributeSet2, int i) {
        super(context, attributeSet, 0);
        this.f1291 = 1.0f;
        this.f1283 = -1;
        this.f1265 = -10066330;
        this.f1266 = new Rect();
        this.f1294 = new Rect();
        this.f1263 = new Rect();
        this.f1272 = new RectF();
        this.f1296 = new RectF();
        Paint paint = new Paint();
        this.f1276 = paint;
        Paint paint2 = new Paint();
        this.f1288 = paint2;
        Paint paint3 = new Paint();
        this.f1275 = paint3;
        Paint paint4 = new Paint();
        this.f1300 = paint4;
        Paint paint5 = new Paint();
        this.f1287 = paint5;
        Paint paint6 = new Paint();
        this.f1298 = paint6;
        paint6.setAntiAlias(true);
        this.f1267 = new CopyOnWriteArraySet();
        this.f1268 = new Point();
        float f = context.getResources().getDisplayMetrics().density;
        this.f1299 = f;
        this.f1284 = m797(-50, f);
        int m797 = m797(3, f);
        int m7972 = m797(26, f);
        int m7973 = m797(4, f);
        int m7974 = m797(9, f);
        int m7975 = m797(0, f);
        int m7976 = m797(16, f);
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, AbstractC3866.f15049, 0, i);
            try {
                Drawable drawable = obtainStyledAttributes.getDrawable(10);
                this.f1301 = drawable;
                if (drawable != null) {
                    drawable.setLayoutDirection(getLayoutDirection());
                    m7972 = Math.max(drawable.getMinimumHeight(), m7972);
                }
                this.f1269 = obtainStyledAttributes.getDimensionPixelSize(3, m797);
                this.f1302 = obtainStyledAttributes.getDimensionPixelSize(12, m7972);
                this.f1270 = obtainStyledAttributes.getInt(2, 0);
                obtainStyledAttributes.getDimensionPixelSize(1, m7973);
                this.f1282 = obtainStyledAttributes.getDimensionPixelSize(11, m7974);
                this.f1279 = obtainStyledAttributes.getDimensionPixelSize(8, m7975);
                this.f1277 = obtainStyledAttributes.getDimensionPixelSize(9, m7976);
                int i2 = obtainStyledAttributes.getInt(6, -1);
                int i3 = obtainStyledAttributes.getInt(7, -1);
                int i4 = obtainStyledAttributes.getInt(4, -855638017);
                int i5 = obtainStyledAttributes.getInt(13, -10066330);
                this.f1265 = i5;
                int i6 = obtainStyledAttributes.getInt(0, -1291845888);
                int i7 = obtainStyledAttributes.getInt(5, 872414976);
                paint.setColor(i2);
                paint6.setColor(i3);
                paint2.setColor(i4);
                paint3.setColor(i5);
                paint4.setColor(i6);
                paint5.setColor(i7);
                obtainStyledAttributes.recycle();
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            this.f1269 = m797;
            this.f1302 = m7972;
            this.f1270 = 0;
            this.f1282 = m7974;
            this.f1279 = m7975;
            this.f1277 = m7976;
            paint.setColor(-1);
            paint6.setColor(-1);
            paint2.setColor(-855638017);
            paint3.setColor(-10066330);
            paint4.setColor(-1291845888);
            paint5.setColor(872414976);
            this.f1301 = null;
        }
        StringBuilder sb = new StringBuilder();
        this.f1303 = sb;
        this.f1273 = new Formatter(sb, Locale.getDefault());
        this.f1295 = new RunnableC3568(3, this);
        Drawable drawable2 = this.f1301;
        if (drawable2 != null) {
            this.f1262 = (drawable2.getMinimumWidth() + 1) / 2;
        } else {
            this.f1262 = (Math.max(this.f1279, Math.max(this.f1282, this.f1277)) + 1) / 2;
        }
        this.f1286 = 1.0f;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.f1278 = valueAnimator;
        valueAnimator.addUpdateListener(new C3883(this, 1));
        this.f1289 = -9223372036854775807L;
        this.f1290 = -9223372036854775807L;
        this.f1280 = -9223372036854775807L;
        this.f1292 = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    private String getProgressText() {
        return AbstractC3712.m7788(this.f1303, this.f1273, this.f1297);
    }

    private long getScrubberPosition() {
        if (this.f1294.width() <= 0 || this.f1289 == -9223372036854775807L) {
            return 0L;
        }
        return (this.f1272.width() * ((float) this.f1289)) / r0.width();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static int m797(int i, float f) {
        return (int) ((i * f) + 0.5f);
    }

    @Override // android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f1301;
        if (drawable != null && drawable.isStateful() && drawable.setState(getDrawableState())) {
            invalidate();
        }
    }

    @Override // p312.InterfaceC3875
    public long getPreferredUpdateDelay() {
        int width = (int) (this.f1294.width() / this.f1299);
        if (width == 0) {
            return Long.MAX_VALUE;
        }
        long j = this.f1289;
        if (j == 0 || j == -9223372036854775807L) {
            return Long.MAX_VALUE;
        }
        return j / width;
    }

    @Override // android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1301;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ab  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onDraw(android.graphics.Canvas r20) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.ui.DefaultTimeBar.onDraw(android.graphics.Canvas):void");
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(150L);
        duration.addUpdateListener(new C3883(this, 0));
        duration.start();
        if (z) {
            return;
        }
        m802(false);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4) {
            accessibilityEvent.getText().add(getProgressText());
        }
        accessibilityEvent.setClassName("android.widget.SeekBar");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.SeekBar");
        accessibilityNodeInfo.setContentDescription(getProgressText());
        if (this.f1289 <= 0) {
            return;
        }
        accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
        accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0022, code lost:
    
        if (m799(-m804(true)) == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0038, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002b, code lost:
    
        if (r3.f1260 == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0036, code lost:
    
        if (m799(m804(false)) == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
    
        if (r3.f1304 == false) goto L28;
     */
    @Override // android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onKeyDown(int r4, android.view.KeyEvent r5) {
        /*
            r3 = this;
            boolean r0 = r3.isEnabled()
            if (r0 == 0) goto L41
            r0 = 66
            r1 = 0
            r2 = 1
            if (r4 == r0) goto L39
            switch(r4) {
                case 19: goto L25;
                case 20: goto L10;
                case 21: goto L10;
                case 22: goto L25;
                case 23: goto L39;
                default: goto Lf;
            }
        Lf:
            goto L41
        L10:
            r0 = 20
            if (r4 != r0) goto L19
            boolean r0 = r3.f1304
            if (r0 != 0) goto L19
            goto L41
        L19:
            long r0 = r3.m804(r2)
            long r0 = -r0
            boolean r0 = r3.m799(r0)
            if (r0 == 0) goto L41
            goto L38
        L25:
            r0 = 19
            if (r4 != r0) goto L2e
            boolean r0 = r3.f1260
            if (r0 != 0) goto L2e
            goto L41
        L2e:
            long r0 = r3.m804(r1)
            boolean r0 = r3.m799(r0)
            if (r0 == 0) goto L41
        L38:
            return r2
        L39:
            boolean r0 = r3.f1305
            if (r0 == 0) goto L41
            r3.m802(r1)
            return r2
        L41:
            boolean r4 = super.onKeyDown(r4, r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.ui.DefaultTimeBar.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (!isEnabled() || !this.f1305 || (i != 21 && i != 22 && ((i != 20 || !this.f1304) && (i != 19 || !this.f1260)))) {
            return super.onKeyUp(i, keyEvent);
        }
        m803();
        return true;
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        Rect rect;
        int i7 = i3 - i;
        int i8 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = i7 - getPaddingRight();
        int i9 = this.f1271 ? 0 : this.f1262;
        int i10 = this.f1270;
        int i11 = this.f1302;
        if (i10 == 1) {
            i5 = (i8 - getPaddingBottom()) - i11;
            int paddingBottom = i8 - getPaddingBottom();
            int i12 = this.f1269;
            i6 = (paddingBottom - i12) - Math.max(i9 - (i12 / 2), 0);
        } else {
            i5 = (i8 - i11) / 2;
            i6 = (i8 - this.f1269) / 2;
        }
        Rect rect2 = this.f1266;
        rect2.set(paddingLeft, i5, paddingRight, i11 + i5);
        this.f1294.set(rect2.left + i9, i6, rect2.right - i9, this.f1269 + i6);
        if (Build.VERSION.SDK_INT >= 29 && ((rect = this.f1261) == null || rect.width() != i7 || this.f1261.height() != i8)) {
            Rect rect3 = new Rect(0, 0, i7, i8);
            this.f1261 = rect3;
            setSystemGestureExclusionRects(Collections.singletonList(rect3));
        }
        m798();
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int i3 = this.f1302;
        if (mode == 0) {
            size = i3;
        } else if (mode != 1073741824) {
            size = Math.min(i3, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), size);
        Drawable drawable = this.f1301;
        if (drawable != null && drawable.isStateful() && drawable.setState(getDrawableState())) {
            invalidate();
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        Drawable drawable = this.f1301;
        if (drawable == null || !drawable.setLayoutDirection(i)) {
            return;
        }
        invalidate();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0035, code lost:
    
        if (r3 != 3) goto L38;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r15) {
        /*
            r14 = this;
            boolean r0 = r14.isEnabled()
            r1 = 0
            if (r0 == 0) goto Lbf
            long r2 = r14.f1289
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 > 0) goto L11
            goto Lbf
        L11:
            float r0 = r15.getX()
            int r0 = (int) r0
            float r2 = r15.getY()
            int r2 = (int) r2
            android.graphics.Point r3 = r14.f1268
            r3.set(r0, r2)
            int r0 = r3.x
            int r2 = r3.y
            int r3 = r15.getAction()
            android.graphics.Rect r4 = r14.f1294
            android.graphics.RectF r5 = r14.f1272
            r6 = 1
            if (r3 == 0) goto L99
            r7 = 3
            if (r3 == r6) goto L8a
            r8 = 2
            if (r3 == r8) goto L39
            if (r3 == r7) goto L8a
            goto Lbf
        L39:
            boolean r15 = r14.f1305
            if (r15 == 0) goto Lbf
            int r15 = r14.f1284
            if (r2 >= r15) goto L54
            int r15 = r14.f1293
            int r0 = r0 - r15
            int r0 = r0 / r7
            int r0 = r0 + r15
            float r15 = (float) r0
            int r0 = r4.left
            float r0 = (float) r0
            int r1 = r4.right
            float r1 = (float) r1
            float r15 = p305.AbstractC3712.m7803(r15, r0, r1)
            r5.right = r15
            goto L63
        L54:
            r14.f1293 = r0
            float r15 = (float) r0
            int r0 = r4.left
            float r0 = (float) r0
            int r1 = r4.right
            float r1 = (float) r1
            float r15 = p305.AbstractC3712.m7803(r15, r0, r1)
            r5.right = r15
        L63:
            long r8 = r14.getScrubberPosition()
            r14.f1281 = r8
            java.util.concurrent.CopyOnWriteArraySet r15 = r14.f1267
            java.util.Iterator r15 = r15.iterator()
        L6f:
            boolean r0 = r15.hasNext()
            if (r0 == 0) goto L83
            java.lang.Object r0 = r15.next()
            r7 = r0
            ᐧⁱ.ˆﾞ r7 = (p312.InterfaceC3850) r7
            r12 = 0
            r10 = r8
            r7.mo8020(r8, r10, r12)
            goto L6f
        L83:
            r14.m798()
            r14.invalidate()
            return r6
        L8a:
            boolean r0 = r14.f1305
            if (r0 == 0) goto Lbf
            int r15 = r15.getAction()
            if (r15 != r7) goto L95
            r1 = r6
        L95:
            r14.m802(r1)
            return r6
        L99:
            float r15 = (float) r0
            float r0 = (float) r2
            int r2 = (int) r15
            int r0 = (int) r0
            android.graphics.Rect r3 = r14.f1266
            boolean r0 = r3.contains(r2, r0)
            if (r0 == 0) goto Lbf
            int r0 = r4.left
            float r0 = (float) r0
            int r1 = r4.right
            float r1 = (float) r1
            float r15 = p305.AbstractC3712.m7803(r15, r0, r1)
            r5.right = r15
            long r0 = r14.getScrubberPosition()
            r14.m805(r0)
            r14.m798()
            r14.invalidate()
            return r6
        Lbf:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.ui.DefaultTimeBar.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i, Bundle bundle) {
        if (super.performAccessibilityAction(i, bundle)) {
            return true;
        }
        if (this.f1289 <= 0) {
            return false;
        }
        if (i == 8192) {
            if (m800(-m804(true))) {
                m802(false);
            }
        } else {
            if (i != 4096) {
                return false;
            }
            if (m800(m804(false))) {
                m802(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    public void setAdMarkerColor(int i) {
        this.f1300.setColor(i);
        invalidate(this.f1266);
    }

    public void setBufferedColor(int i) {
        this.f1288.setColor(i);
        invalidate(this.f1266);
    }

    @Override // p312.InterfaceC3875
    public void setBufferedPosition(long j) {
        if (this.f1264 == j) {
            return;
        }
        this.f1264 = j;
        m798();
    }

    @Override // p312.InterfaceC3875
    public void setDuration(long j) {
        if (this.f1289 == j) {
            return;
        }
        this.f1289 = j;
        if (j == -9223372036854775807L) {
            m802(true);
        }
        if (this.f1305) {
            return;
        }
        m798();
    }

    @Override // android.view.View, p312.InterfaceC3875
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (z) {
            return;
        }
        m802(true);
    }

    public void setKeyCountIncrement(int i) {
        AbstractC3731.m7849(i > 0);
        this.f1292 = i;
        this.f1290 = -9223372036854775807L;
        this.f1280 = -9223372036854775807L;
    }

    public void setPlayedAdMarkerColor(int i) {
        this.f1287.setColor(i);
        invalidate(this.f1266);
    }

    public void setPlayedColor(int i) {
        this.f1276.setColor(i);
        invalidate(this.f1266);
    }

    public void setScrubPosition(long j) {
        if (this.f1305) {
            this.f1281 = j;
            m798();
        }
    }

    public void setScrubberColor(int i) {
        this.f1283 = i;
        if (isEnabled()) {
            this.f1298.setColor(i);
            invalidate(this.f1266);
        }
    }

    public void setScrubbingWithDownEnabled(boolean z) {
        this.f1304 = z;
    }

    public void setScrubbingWithUpEnabled(boolean z) {
        this.f1260 = z;
    }

    public void setUnplayedColor(int i) {
        this.f1275.setColor(i);
        invalidate(this.f1266);
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m798() {
        Rect rect = this.f1263;
        Rect rect2 = this.f1294;
        rect.set(rect2);
        RectF rectF = this.f1272;
        rectF.set(rect2);
        RectF rectF2 = this.f1296;
        rectF2.set(rect2);
        if (this.f1289 > 0) {
            rect.right = Math.min(rect2.left + ((int) ((rect2.width() * this.f1264) / this.f1289)), rect2.right);
            rectF.right = Math.min(rect2.left + ((((float) (this.f1305 ? this.f1281 : this.f1297)) / ((float) this.f1289)) * rect2.width()), rect2.right);
            rectF2.right = Math.min(rect2.left + ((((float) this.f1285) / ((float) this.f1289)) * rect2.width()), rect2.right);
        } else {
            int i = rect2.left;
            rect.right = i;
            float f = i;
            rectF.right = f;
            rectF2.right = f;
        }
        invalidate(this.f1266);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m799(long j) {
        if (!m800(j)) {
            return false;
        }
        RunnableC3568 runnableC3568 = this.f1295;
        removeCallbacks(runnableC3568);
        postDelayed(runnableC3568, 550L);
        return true;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean m800(long j) {
        long j2 = this.f1289;
        if (j2 <= 0) {
            return false;
        }
        long j3 = this.f1305 ? this.f1281 : this.f1297;
        long j4 = j3 + j;
        long j5 = this.f1285;
        if (j5 > 0) {
            j2 = Math.min(j5, j2);
        }
        long m7767 = AbstractC3712.m7767(j4, 0L, j2);
        if (m7767 == j3 && j4 >= 0) {
            return false;
        }
        m805(m7767);
        this.f1281 = m7767;
        Iterator it = this.f1267.iterator();
        while (it.hasNext()) {
            long j6 = j4;
            ((InterfaceC3850) it.next()).mo8020(j6, m7767, j);
            j4 = j6;
        }
        m798();
        return true;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m801(long j, long j2) {
        if (this.f1297 == j && this.f1285 == j2) {
            return;
        }
        this.f1297 = j;
        this.f1285 = j2;
        setContentDescription(getProgressText());
        m798();
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m802(boolean z) {
        if (this.f1305) {
            this.f1305 = false;
            removeCallbacks(this.f1295);
            setPressed(false);
            ViewParent parent = getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(false);
            }
            invalidate();
            Iterator it = this.f1267.iterator();
            while (it.hasNext()) {
                ((InterfaceC3850) it.next()).mo8022(z, this.f1281);
            }
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m803() {
        long currentTimeMillis = System.currentTimeMillis();
        if (this.f1274 > currentTimeMillis) {
            this.f1274 = 0L;
        }
        if (currentTimeMillis - this.f1274 > 550) {
            m802(false);
        }
        this.f1274 = currentTimeMillis;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long m804(boolean z) {
        long j = z ? this.f1290 : this.f1280;
        if (j != -9223372036854775807L) {
            return j;
        }
        long j2 = this.f1289;
        if (j2 == -9223372036854775807L) {
            return 0L;
        }
        return j2 / this.f1292;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m805(long j) {
        if (this.f1305) {
            return;
        }
        this.f1305 = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator it = this.f1267.iterator();
        while (it.hasNext()) {
            ((InterfaceC3850) it.next()).mo8021(j);
        }
    }
}
