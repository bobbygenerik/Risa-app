package p136;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.LayoutInflater;
import ar.tvplayer.tv.R;

/* renamed from: ˉʿ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2219 extends ContextWrapper {

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static Configuration f8694;

    /* renamed from: ʽ, reason: contains not printable characters */
    public LayoutInflater f8695;

    /* renamed from: ˈ, reason: contains not printable characters */
    public Configuration f8696;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Resources f8697;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public Resources.Theme f8698;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f8699;

    public C2219(Context context, int i) {
        super(context);
        this.f8699 = i;
    }

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AssetManager getAssets() {
        return getResources().getAssets();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0022, code lost:
    
        if (r0.equals(p136.C2219.f8694) != false) goto L15;
     */
    @Override // android.content.ContextWrapper, android.content.Context
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.content.res.Resources getResources() {
        /*
            r3 = this;
            android.content.res.Resources r0 = r3.f8697
            if (r0 != 0) goto L38
            android.content.res.Configuration r0 = r3.f8696
            if (r0 == 0) goto L32
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 26
            if (r1 < r2) goto L25
            android.content.res.Configuration r1 = p136.C2219.f8694
            if (r1 != 0) goto L1c
            android.content.res.Configuration r1 = new android.content.res.Configuration
            r1.<init>()
            r2 = 0
            r1.fontScale = r2
            p136.C2219.f8694 = r1
        L1c:
            android.content.res.Configuration r1 = p136.C2219.f8694
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L25
            goto L32
        L25:
            android.content.res.Configuration r0 = r3.f8696
            android.content.Context r0 = r3.createConfigurationContext(r0)
            android.content.res.Resources r0 = r0.getResources()
            r3.f8697 = r0
            goto L38
        L32:
            android.content.res.Resources r0 = super.getResources()
            r3.f8697 = r0
        L38:
            android.content.res.Resources r0 = r3.f8697
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p136.C2219.getResources():android.content.res.Resources");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f8695 == null) {
            this.f8695 = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f8695;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources.Theme getTheme() {
        Resources.Theme theme = this.f8698;
        if (theme != null) {
            return theme;
        }
        if (this.f8699 == 0) {
            this.f8699 = R.style.ri;
        }
        m5206();
        return this.f8698;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i) {
        if (this.f8699 != i) {
            this.f8699 = i;
            m5206();
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m5206() {
        if (this.f8698 == null) {
            this.f8698 = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f8698.setTo(theme);
            }
        }
        this.f8698.applyStyle(this.f8699, true);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m5207(Configuration configuration) {
        if (this.f8697 != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.f8696 != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.f8696 = new Configuration(configuration);
    }
}
