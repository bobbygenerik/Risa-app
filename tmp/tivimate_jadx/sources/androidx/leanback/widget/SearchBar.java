package androidx.leanback.widget;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.media.SoundPool;
import android.os.Handler;
import android.speech.SpeechRecognizer;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import ar.tvplayer.tv.R;
import p229.C3109;
import p384.C4603;

/* loaded from: classes.dex */
public class SearchBar extends RelativeLayout {

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public static final /* synthetic */ int f716 = 0;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public SpeechRecognizer f717;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public SpeechOrbView f718;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public InterfaceC0102 f719;

    /* renamed from: ʿ, reason: contains not printable characters */
    public InterfaceC0153 f720;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final int f721;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final int f722;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public ImageView f723;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final SparseIntArray f724;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final Context f725;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public Drawable f726;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public String f727;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final int f728;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final int f729;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final int f730;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public boolean f731;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final InputMethodManager f732;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public String f733;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public SearchEditText f734;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public boolean f735;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public String f736;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public boolean f737;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final Handler f738;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public Drawable f739;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final int f740;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public SoundPool f741;

    public SearchBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SearchBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, 0);
        this.f738 = new Handler();
        this.f737 = false;
        this.f724 = new SparseIntArray();
        this.f735 = false;
        this.f725 = context;
        Resources resources = getResources();
        LayoutInflater.from(getContext()).inflate(R.layout.lb_search_bar, (ViewGroup) this, true);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R.dimen.59n));
        layoutParams.addRule(10, -1);
        setLayoutParams(layoutParams);
        setBackgroundColor(0);
        setClipChildren(false);
        this.f736 = "";
        this.f732 = (InputMethodManager) context.getSystemService("input_method");
        this.f740 = resources.getColor(R.color.3ct);
        this.f721 = resources.getColor(R.color.749);
        this.f728 = resources.getInteger(R.integer.4ej);
        this.f729 = resources.getInteger(R.integer.743);
        this.f730 = resources.getColor(R.color.319);
        this.f722 = resources.getColor(R.color.1kf);
    }

    public Drawable getBadgeDrawable() {
        return this.f726;
    }

    public CharSequence getHint() {
        return this.f727;
    }

    public String getTitle() {
        return this.f733;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f741 = new SoundPool(2, 1, 0);
        int[] iArr = {R.raw.7s, R.raw.mb, R.raw.76l, R.raw.6en};
        for (int i = 0; i < 4; i++) {
            int i2 = iArr[i];
            this.f724.put(i2, this.f741.load(this.f725, i2, 1));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        m552();
        this.f741.release();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f739 = ((RelativeLayout) findViewById(R.id.2f3)).getBackground();
        this.f734 = (SearchEditText) findViewById(R.id.3pq);
        ImageView imageView = (ImageView) findViewById(R.id.17s);
        this.f723 = imageView;
        Drawable drawable = this.f726;
        if (drawable != null) {
            imageView.setImageDrawable(drawable);
        }
        this.f734.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0133(this, 0));
        this.f734.addTextChangedListener(new ʼⁱ.ˆʾ(this, new RunnableC0082(this, 0)));
        this.f734.setOnKeyboardDismissListener(new ﹳי.ʽ(this));
        int i = 1;
        this.f734.setOnEditorActionListener(new C0134(i, this));
        this.f734.setPrivateImeOptions("escapeNorth,voiceDismiss");
        SpeechOrbView speechOrbView = (SpeechOrbView) findViewById(R.id.6j3);
        this.f718 = speechOrbView;
        speechOrbView.setOnOrbClickedListener(new ViewOnClickListenerC0083(i, this));
        this.f718.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0133(this, 1));
        m550(hasFocus());
        m549();
    }

    public void setBadgeDrawable(Drawable drawable) {
        this.f726 = drawable;
        ImageView imageView = this.f723;
        if (imageView != null) {
            imageView.setImageDrawable(drawable);
            if (drawable != null) {
                this.f723.setVisibility(0);
            } else {
                this.f723.setVisibility(8);
            }
        }
    }

    @Override // android.view.View
    public void setNextFocusDownId(int i) {
        this.f718.setNextFocusDownId(i);
        this.f734.setNextFocusDownId(i);
    }

    public void setPermissionListener(InterfaceC0153 interfaceC0153) {
        this.f720 = interfaceC0153;
    }

    public void setSearchAffordanceColors(C0116 c0116) {
        SpeechOrbView speechOrbView = this.f718;
        if (speechOrbView != null) {
            speechOrbView.setNotListeningOrbColors(c0116);
        }
    }

    public void setSearchAffordanceColorsInListening(C0116 c0116) {
        SpeechOrbView speechOrbView = this.f718;
        if (speechOrbView != null) {
            speechOrbView.setListeningOrbColors(c0116);
        }
    }

    public void setSearchBarListener(InterfaceC0102 interfaceC0102) {
        this.f719 = interfaceC0102;
    }

    public void setSearchQuery(String str) {
        m552();
        this.f734.setText(str);
        setSearchQueryInternal(str);
    }

    public void setSearchQueryInternal(String str) {
        if (TextUtils.equals(this.f736, str)) {
            return;
        }
        this.f736 = str;
        InterfaceC0102 interfaceC0102 = this.f719;
        if (interfaceC0102 != null) {
            ﾞᵔ.ˉٴ.ʽᐧ((ﾞᵔ.ˉٴ) ((C4603) interfaceC0102).f17126, str, false);
        }
    }

    @Deprecated
    public void setSpeechRecognitionCallback(InterfaceC0124 interfaceC0124) {
    }

    public void setSpeechRecognizer(SpeechRecognizer speechRecognizer) {
        m552();
        SpeechRecognizer speechRecognizer2 = this.f717;
        if (speechRecognizer2 != null) {
            speechRecognizer2.setRecognitionListener(null);
            if (this.f731) {
                this.f717.cancel();
                this.f731 = false;
            }
        }
        this.f717 = speechRecognizer;
    }

    public void setTitle(String str) {
        this.f733 = str;
        m549();
    }

    /* renamed from: ʽ */
    public void mo458() {
        this.f738.post(new RunnableC0114(R.raw.mb, 0, this));
    }

    /* renamed from: ˈ */
    public void mo459() {
        this.f738.post(new RunnableC0114(R.raw.6en, 0, this));
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m548() {
        if (this.f735) {
            return;
        }
        if (!hasFocus()) {
            requestFocus();
        }
        if (this.f717 == null) {
            return;
        }
        if (getContext().checkCallingOrSelfPermission("android.permission.RECORD_AUDIO") != 0) {
            ﾞᵔ.ⁱˊ r0 = this.f720;
            if (r0 == null) {
                throw new IllegalStateException("android.permission.RECORD_AUDIO required for search");
            }
            C3109 c3109 = r0.ᴵˊ.ʿʽ;
            boolean z = ʿˋ.ˉʿ.ﹳٴ;
            try {
                c3109.mo6753("android.permission.RECORD_AUDIO");
                return;
            } catch (Exception unused) {
                return;
            }
        }
        this.f735 = true;
        this.f734.setText("");
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        intent.putExtra("android.speech.extra.PARTIAL_RESULTS", true);
        this.f717.setRecognitionListener(new C0125(this));
        this.f731 = true;
        this.f717.startListening(intent);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m549() {
        String string = getResources().getString(R.string.lb_search_bar_hint);
        if (!TextUtils.isEmpty(this.f733)) {
            string = this.f718.isFocused() ? getResources().getString(R.string.3j, this.f733) : getResources().getString(R.string.2sk, this.f733);
        } else if (this.f718.isFocused()) {
            string = getResources().getString(R.string.ha);
        }
        this.f727 = string;
        SearchEditText searchEditText = this.f734;
        if (searchEditText != null) {
            searchEditText.setHint(string);
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m550(boolean z) {
        if (z) {
            this.f739.setAlpha(this.f728);
            boolean isFocused = this.f718.isFocused();
            int i = this.f730;
            if (isFocused) {
                this.f734.setTextColor(i);
                this.f734.setHintTextColor(i);
            } else {
                this.f734.setTextColor(this.f740);
                this.f734.setHintTextColor(i);
            }
        } else {
            this.f739.setAlpha(this.f729);
            this.f734.setTextColor(this.f721);
            this.f734.setHintTextColor(this.f722);
        }
        m549();
    }

    /* renamed from: ⁱˊ */
    public void mo460() {
        this.f738.post(new RunnableC0114(R.raw.7s, 0, this));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m551() {
        this.f732.hideSoftInputFromWindow(this.f734.getWindowToken(), 0);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m552() {
        if (this.f735) {
            this.f734.setText(this.f736);
            this.f734.setHint(this.f727);
            this.f735 = false;
            if (this.f717 == null) {
                return;
            }
            this.f718.m556();
            if (this.f731) {
                this.f717.cancel();
                this.f731 = false;
            }
            this.f717.setRecognitionListener(null);
        }
    }
}
