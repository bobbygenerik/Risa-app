package p096;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.leanback.widget.RunnableC0142;
import p005.C0818;
import ˈˆ.ﾞᴵ;

/* renamed from: ˆʾ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1892 extends Drawable implements Drawable.Callback {

    /* renamed from: ـˏ, reason: contains not printable characters */
    public static final /* synthetic */ int f7541 = 0;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public boolean f7542;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Drawable f7543;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public C1893 f7544;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public C1893 f7545;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public C1893 f7546;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Drawable f7547;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public boolean f7548;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public boolean f7549;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public ﾞᴵ f7552;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public long f7553;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Rect f7555;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public long f7557;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public RunnableC0142 f7558;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public C0818 f7559;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public boolean f7560;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f7556 = 255;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f7554 = -1;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public int f7551 = -1;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public int f7550 = -1;

    public C1892(C1893 c1893, Resources resources) {
        m4820(new C1893(c1893, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0272, code lost:
    
        r5.onStateChange(r5.getState());
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0279, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00f9, code lost:
    
        if (r6 == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00fb, code lost:
    
        r6 = r26.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0100, code lost:
    
        if (r6 != 4) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0104, code lost:
    
        if (r6 != 2) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0110, code lost:
    
        if (r26.getName().equals("vector") == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0112, code lost:
    
        r6 = new p005.C0831();
        r6.inflate(r1, r26, r27, r28);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x011b, code lost:
    
        r6 = p295.AbstractC3658.m7678(r25, r26, r27, r28);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0138, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r26.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0139, code lost:
    
        if (r6 == null) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x013b, code lost:
    
        r9 = r5.f7546;
        r6 = r9.m4833(r6);
        r9.f7575[r6] = r8;
        r9.f7581.m7199(r6, java.lang.Integer.valueOf(r15));
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x016d, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r26.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
     */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p096.C1892 m4819(android.content.Context r24, android.content.res.Resources r25, android.content.res.XmlResourceParser r26, android.util.AttributeSet r27, android.content.res.Resources.Theme r28) {
        /*
            Method dump skipped, instructions count: 664
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p096.C1892.m4819(android.content.Context, android.content.res.Resources, android.content.res.XmlResourceParser, android.util.AttributeSet, android.content.res.Resources$Theme):ˆʾ.ˑﹳ");
    }

    @Override // android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        m4826(theme);
        onStateChange(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        return this.f7544.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable = this.f7543;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f7547;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f7556;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f7544.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        boolean z;
        C1893 c1893 = this.f7544;
        if (!c1893.f7567) {
            c1893.m4829();
            c1893.f7567 = true;
            int i = c1893.f7589;
            Drawable[] drawableArr = c1893.f7587;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    c1893.f7561 = true;
                    z = true;
                    break;
                }
                if (drawableArr[i2].getConstantState() == null) {
                    c1893.f7561 = false;
                    z = false;
                    break;
                }
                i2++;
            }
        } else {
            z = c1893.f7561;
        }
        if (!z) {
            return null;
        }
        this.f7544.f7571 = getChangingConfigurations();
        return this.f7544;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable getCurrent() {
        return this.f7543;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f7555;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        C1893 c1893 = this.f7544;
        if (c1893.f7595) {
            if (!c1893.f7573) {
                c1893.m4832();
            }
            return c1893.f7574;
        }
        Drawable drawable = this.f7543;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        C1893 c1893 = this.f7544;
        if (c1893.f7595) {
            if (!c1893.f7573) {
                c1893.m4832();
            }
            return c1893.f7588;
        }
        Drawable drawable = this.f7543;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() {
        C1893 c1893 = this.f7544;
        if (c1893.f7595) {
            if (!c1893.f7573) {
                c1893.m4832();
            }
            return c1893.f7590;
        }
        Drawable drawable = this.f7543;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() {
        C1893 c1893 = this.f7544;
        if (c1893.f7595) {
            if (!c1893.f7573) {
                c1893.m4832();
            }
            return c1893.f7564;
        }
        Drawable drawable = this.f7543;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f7543;
        if (drawable != null && drawable.isVisible()) {
            C1893 c1893 = this.f7544;
            if (c1893.f7594) {
                return c1893.f7579;
            }
            c1893.m4829();
            int i = c1893.f7589;
            Drawable[] drawableArr = c1893.f7587;
            r1 = i > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i2 = 1; i2 < i; i2++) {
                r1 = Drawable.resolveOpacity(r1, drawableArr[i2].getOpacity());
            }
            c1893.f7579 = r1;
            c1893.f7594 = true;
        }
        return r1;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        Drawable drawable = this.f7543;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        C1893 c1893 = this.f7544;
        Rect rect2 = null;
        boolean z = false;
        if (!c1893.f7563) {
            Rect rect3 = c1893.f7583;
            if (rect3 != null || c1893.f7570) {
                rect2 = rect3;
            } else {
                c1893.m4829();
                Rect rect4 = new Rect();
                int i = c1893.f7589;
                Drawable[] drawableArr = c1893.f7587;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2].getPadding(rect4)) {
                        if (rect2 == null) {
                            rect2 = new Rect(0, 0, 0, 0);
                        }
                        int i3 = rect4.left;
                        if (i3 > rect2.left) {
                            rect2.left = i3;
                        }
                        int i4 = rect4.top;
                        if (i4 > rect2.top) {
                            rect2.top = i4;
                        }
                        int i5 = rect4.right;
                        if (i5 > rect2.right) {
                            rect2.right = i5;
                        }
                        int i6 = rect4.bottom;
                        if (i6 > rect2.bottom) {
                            rect2.bottom = i6;
                        }
                    }
                }
                c1893.f7570 = true;
                c1893.f7583 = rect2;
            }
        }
        if (rect2 != null) {
            rect.set(rect2);
            if ((rect2.left | rect2.top | rect2.bottom | rect2.right) != 0) {
                z = true;
            }
        } else {
            Drawable drawable = this.f7543;
            z = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (this.f7544.f7568 && getLayoutDirection() == 1) {
            int i7 = rect.left;
            rect.left = rect.right;
            rect.right = i7;
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        C1893 c1893 = this.f7544;
        if (c1893 != null) {
            c1893.f7594 = false;
            c1893.f7577 = false;
        }
        if (drawable != this.f7543 || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.f7544.f7568;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        m4823();
        ﾞᴵ r0 = this.f7552;
        if (r0 != null) {
            r0.ﹳـ();
            this.f7552 = null;
            m4825(this.f7551);
            this.f7551 = -1;
            this.f7550 = -1;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.f7542) {
            m4824();
            C1893 c1893 = this.f7546;
            c1893.f7586 = c1893.f7586.clone();
            c1893.f7581 = c1893.f7581.clone();
            this.f7542 = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f7547;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f7543;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i) {
        C1893 c1893 = this.f7544;
        int i2 = this.f7554;
        int i3 = c1893.f7589;
        Drawable[] drawableArr = c1893.f7587;
        boolean z = false;
        for (int i4 = 0; i4 < i3; i4++) {
            Drawable drawable = drawableArr[i4];
            if (drawable != null) {
                boolean layoutDirection = drawable.setLayoutDirection(i);
                if (i4 == i2) {
                    z = layoutDirection;
                }
            }
        }
        c1893.f7569 = i;
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        Drawable drawable = this.f7547;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.f7543;
        if (drawable2 != null) {
            return drawable2.setLevel(i);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d1, code lost:
    
        if (m4825(r1) != false) goto L45;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onStateChange(int[] r15) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p096.C1892.onStateChange(int[]):boolean");
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable != this.f7543 || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.f7549 && this.f7556 == i) {
            return;
        }
        this.f7549 = true;
        this.f7556 = i;
        Drawable drawable = this.f7543;
        if (drawable != null) {
            if (this.f7553 == 0) {
                drawable.setAlpha(i);
            } else {
                m4827(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        C1893 c1893 = this.f7544;
        if (c1893.f7568 != z) {
            c1893.f7568 = z;
            Drawable drawable = this.f7543;
            if (drawable != null) {
                drawable.setAutoMirrored(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        C1893 c1893 = this.f7544;
        c1893.f7566 = true;
        if (c1893.f7584 != colorFilter) {
            c1893.f7584 = colorFilter;
            Drawable drawable = this.f7543;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setDither(boolean z) {
        C1893 c1893 = this.f7544;
        if (c1893.f7580 != z) {
            c1893.f7580 = z;
            Drawable drawable = this.f7543;
            if (drawable != null) {
                drawable.setDither(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspot(float f, float f2) {
        Drawable drawable = this.f7543;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.f7555;
        if (rect == null) {
            this.f7555 = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.f7543;
        if (drawable != null) {
            drawable.setHotspotBounds(i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        C1893 c1893 = this.f7544;
        c1893.f7576 = true;
        if (c1893.f7572 != colorStateList) {
            c1893.f7572 = colorStateList;
            this.f7543.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        C1893 c1893 = this.f7544;
        c1893.f7582 = true;
        if (c1893.f7585 != mode) {
            c1893.f7585 = mode;
            this.f7543.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean m4821 = m4821(z, z2);
        ﾞᴵ r1 = this.f7552;
        if (r1 != null && (m4821 || z2)) {
            if (z) {
                r1.ـˏ();
                return m4821;
            }
            jumpToCurrentState();
        }
        return m4821;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f7543 || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m4820(C1893 c1893) {
        this.f7544 = c1893;
        int i = this.f7554;
        if (i >= 0) {
            Drawable m4830 = c1893.m4830(i);
            this.f7543 = m4830;
            if (m4830 != null) {
                m4822(m4830);
            }
        }
        this.f7547 = null;
        this.f7545 = c1893;
        this.f7546 = c1893;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final boolean m4821(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.f7547;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.f7543;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m4822(Drawable drawable) {
        if (this.f7559 == null) {
            this.f7559 = new C0818();
        }
        C0818 c0818 = this.f7559;
        c0818.f3494 = drawable.getCallback();
        drawable.setCallback(c0818);
        try {
            if (this.f7544.f7562 <= 0 && this.f7549) {
                drawable.setAlpha(this.f7556);
            }
            C1893 c1893 = this.f7544;
            if (c1893.f7566) {
                drawable.setColorFilter(c1893.f7584);
            } else {
                if (c1893.f7576) {
                    drawable.setTintList(c1893.f7572);
                }
                C1893 c18932 = this.f7544;
                if (c18932.f7582) {
                    drawable.setTintMode(c18932.f7585);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f7544.f7580);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            drawable.setLayoutDirection(getLayoutDirection());
            drawable.setAutoMirrored(this.f7544.f7568);
            Rect rect = this.f7555;
            if (rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
            C0818 c08182 = this.f7559;
            Drawable.Callback callback = (Drawable.Callback) c08182.f3494;
            c08182.f3494 = null;
            drawable.setCallback(callback);
        } catch (Throwable th) {
            C0818 c08183 = this.f7559;
            Drawable.Callback callback2 = (Drawable.Callback) c08183.f3494;
            c08183.f3494 = null;
            drawable.setCallback(callback2);
            throw th;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m4823() {
        boolean z;
        Drawable drawable = this.f7547;
        boolean z2 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f7547 = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f7543;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f7549) {
                this.f7543.setAlpha(this.f7556);
            }
        }
        if (this.f7557 != 0) {
            this.f7557 = 0L;
            z = true;
        }
        if (this.f7553 != 0) {
            this.f7553 = 0L;
        } else {
            z2 = z;
        }
        if (z2) {
            invalidateSelf();
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Drawable m4824() {
        if (!this.f7560) {
            m4828();
            C1893 c1893 = this.f7545;
            c1893.f7586 = c1893.f7586.clone();
            c1893.f7581 = c1893.f7581.clone();
            this.f7560 = true;
        }
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0075  */
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4825(int r10) {
        /*
            r9 = this;
            int r0 = r9.f7554
            r1 = 0
            if (r10 != r0) goto L6
            return r1
        L6:
            long r2 = android.os.SystemClock.uptimeMillis()
            ˆʾ.ⁱˊ r0 = r9.f7544
            int r0 = r0.f7591
            r4 = 0
            r5 = 0
            if (r0 <= 0) goto L2e
            android.graphics.drawable.Drawable r0 = r9.f7547
            if (r0 == 0) goto L1a
            r0.setVisible(r1, r1)
        L1a:
            android.graphics.drawable.Drawable r0 = r9.f7543
            if (r0 == 0) goto L29
            r9.f7547 = r0
            ˆʾ.ⁱˊ r0 = r9.f7544
            int r0 = r0.f7591
            long r0 = (long) r0
            long r0 = r0 + r2
            r9.f7557 = r0
            goto L35
        L29:
            r9.f7547 = r4
            r9.f7557 = r5
            goto L35
        L2e:
            android.graphics.drawable.Drawable r0 = r9.f7543
            if (r0 == 0) goto L35
            r0.setVisible(r1, r1)
        L35:
            if (r10 < 0) goto L55
            ˆʾ.ⁱˊ r0 = r9.f7544
            int r1 = r0.f7589
            if (r10 >= r1) goto L55
            android.graphics.drawable.Drawable r0 = r0.m4830(r10)
            r9.f7543 = r0
            r9.f7554 = r10
            if (r0 == 0) goto L5a
            ˆʾ.ⁱˊ r10 = r9.f7544
            int r10 = r10.f7562
            if (r10 <= 0) goto L51
            long r7 = (long) r10
            long r2 = r2 + r7
            r9.f7553 = r2
        L51:
            r9.m4822(r0)
            goto L5a
        L55:
            r9.f7543 = r4
            r10 = -1
            r9.f7554 = r10
        L5a:
            long r0 = r9.f7553
            int r10 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            r0 = 1
            if (r10 != 0) goto L67
            long r1 = r9.f7557
            int r10 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r10 == 0) goto L7b
        L67:
            androidx.leanback.widget.ᵔʾ r10 = r9.f7558
            if (r10 != 0) goto L75
            androidx.leanback.widget.ᵔʾ r10 = new androidx.leanback.widget.ᵔʾ
            r1 = 15
            r10.<init>(r1, r9)
            r9.f7558 = r10
            goto L78
        L75:
            r9.unscheduleSelf(r10)
        L78:
            r9.m4827(r0)
        L7b:
            r9.invalidateSelf()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p096.C1892.m4825(int):boolean");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m4826(Resources.Theme theme) {
        C1893 c1893 = this.f7544;
        if (theme == null) {
            c1893.getClass();
            return;
        }
        c1893.m4829();
        int i = c1893.f7589;
        Drawable[] drawableArr = c1893.f7587;
        for (int i2 = 0; i2 < i; i2++) {
            Drawable drawable = drawableArr[i2];
            if (drawable != null && drawable.canApplyTheme()) {
                drawableArr[i2].applyTheme(theme);
                c1893.f7578 |= drawableArr[i2].getChangingConfigurations();
            }
        }
        Resources resources = theme.getResources();
        if (resources != null) {
            c1893.f7592 = resources;
            int i3 = resources.getDisplayMetrics().densityDpi;
            if (i3 == 0) {
                i3 = 160;
            }
            int i4 = c1893.f7565;
            c1893.f7565 = i3;
            if (i4 != i3) {
                c1893.f7573 = false;
                c1893.f7570 = false;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0066 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0061  */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4827(boolean r14) {
        /*
            r13 = this;
            r0 = 1
            r13.f7549 = r0
            long r1 = android.os.SystemClock.uptimeMillis()
            android.graphics.drawable.Drawable r3 = r13.f7543
            r4 = 255(0xff, double:1.26E-321)
            r6 = 0
            r8 = 0
            if (r3 == 0) goto L36
            long r9 = r13.f7553
            int r11 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
            if (r11 == 0) goto L38
            int r11 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r11 > 0) goto L22
            int r9 = r13.f7556
            r3.setAlpha(r9)
            r13.f7553 = r6
            goto L38
        L22:
            long r9 = r9 - r1
            long r9 = r9 * r4
            int r9 = (int) r9
            ˆʾ.ⁱˊ r10 = r13.f7544
            int r10 = r10.f7562
            int r9 = r9 / r10
            int r9 = 255 - r9
            int r10 = r13.f7556
            int r9 = r9 * r10
            int r9 = r9 / 255
            r3.setAlpha(r9)
            r3 = r0
            goto L39
        L36:
            r13.f7553 = r6
        L38:
            r3 = r8
        L39:
            android.graphics.drawable.Drawable r9 = r13.f7547
            if (r9 == 0) goto L61
            long r10 = r13.f7557
            int r12 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r12 == 0) goto L63
            int r12 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r12 > 0) goto L50
            r9.setVisible(r8, r8)
            r0 = 0
            r13.f7547 = r0
            r13.f7557 = r6
            goto L63
        L50:
            long r10 = r10 - r1
            long r10 = r10 * r4
            int r3 = (int) r10
            ˆʾ.ⁱˊ r4 = r13.f7544
            int r4 = r4.f7591
            int r3 = r3 / r4
            int r4 = r13.f7556
            int r3 = r3 * r4
            int r3 = r3 / 255
            r9.setAlpha(r3)
            goto L64
        L61:
            r13.f7557 = r6
        L63:
            r0 = r3
        L64:
            if (r14 == 0) goto L70
            if (r0 == 0) goto L70
            androidx.leanback.widget.ᵔʾ r14 = r13.f7558
            r3 = 16
            long r1 = r1 + r3
            r13.scheduleSelf(r14, r1)
        L70:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p096.C1892.m4827(boolean):void");
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Drawable m4828() {
        if (!this.f7548 && super.mutate() == this) {
            C1893 c1893 = new C1893(this.f7546, this, null);
            c1893.f7586 = c1893.f7586.clone();
            c1893.f7581 = c1893.f7581.clone();
            m4820(c1893);
            this.f7548 = true;
        }
        return this;
    }
}
