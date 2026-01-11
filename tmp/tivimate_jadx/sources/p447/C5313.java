package p447;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Pair;
import android.util.SparseArray;
import com.bumptech.glide.C0229;
import p073.C1643;
import p296.AbstractC3659;
import p392.C4643;
import ʽⁱ.ᵎﹶ;
import ᐧᵎ.ᵢי;

/* renamed from: ﹶﾞ.ᐧᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5313 extends AbstractC5276 {

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public static final Pair f20020 = new Pair("", 0L);

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final C5316 f20021;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public SharedPreferences f20022;

    /* renamed from: ʿ, reason: contains not printable characters */
    public final ᵢי f20023;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final C0229 f20024;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final C5316 f20025;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public SharedPreferences f20026;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final C0229 f20027;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final C4643 f20028;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public String f20029;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C4643 f20030;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public boolean f20031;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final C4643 f20032;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final C4643 f20033;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final C5316 f20034;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public long f20035;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final C0229 f20036;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final C0229 f20037;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public C1643 f20038;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final C4643 f20039;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f20040;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final C5316 f20041;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final ᵢי f20042;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final C4643 f20043;

    public C5313(C5322 c5322) {
        super(c5322);
        this.f20039 = new C4643(this, "session_timeout", 1800000L);
        this.f20041 = new C5316(this, "start_new_session", true);
        this.f20033 = new C4643(this, "last_pause_time", 0L);
        this.f20032 = new C4643(this, "session_id", 0L);
        this.f20024 = new C0229(this, "non_personalized_ads");
        this.f20042 = new ᵢי(this, "last_received_uri_timestamps_by_source");
        this.f20025 = new C5316(this, "allow_remote_dynamite", false);
        this.f20030 = new C4643(this, "first_open_time", 0L);
        AbstractC3659.m7680("app_install_time");
        this.f20036 = new C0229(this, "app_instance_id");
        this.f20021 = new C5316(this, "app_backgrounded", false);
        this.f20034 = new C5316(this, "deep_link_retrieval_complete", false);
        this.f20043 = new C4643(this, "deep_link_retrieval_attempts", 0L);
        this.f20027 = new C0229(this, "firebase_feature_rollouts");
        this.f20037 = new C0229(this, "deferred_attribution_cache");
        this.f20028 = new C4643(this, "deferred_attribution_cache_timestamp", 0L);
        this.f20023 = new ᵢי(this, "default_event_parameters");
    }

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final SharedPreferences m10545() {
        ⁱᴵ();
        m10463();
        AbstractC3659.m7687(this.f20022);
        return this.f20022;
    }

    /* renamed from: ˈـ, reason: contains not printable characters */
    public final C5311 m10546() {
        ⁱᴵ();
        return C5311.m10530(m10545().getInt("consent_source", 100), m10545().getString("consent_settings", "G1"));
    }

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public final boolean m10547(C5290 c5290) {
        ⁱᴵ();
        String string = m10545().getString("stored_tcf_param", "");
        String m10486 = c5290.m10486();
        if (m10486.equals(string)) {
            return false;
        }
        SharedPreferences.Editor edit = m10545().edit();
        edit.putString("stored_tcf_param", m10486);
        edit.apply();
        return true;
    }

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public final boolean m10548(long j) {
        return j - this.f20039.m9215() > this.f20033.m9215();
    }

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public final void m10549(boolean z) {
        ⁱᴵ();
        C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
        C5322.m10556(c5344);
        c5344.f20350.m10216(Boolean.valueOf(z), "App measurement setting deferred collection");
        SharedPreferences.Editor edit = m10545().edit();
        edit.putBoolean("deferred_analytics_collection", z);
        edit.apply();
    }

    /* renamed from: יˉ, reason: contains not printable characters */
    public final SharedPreferences m10550() {
        ⁱᴵ();
        m10463();
        if (this.f20026 == null) {
            C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
            String valueOf = String.valueOf(c5322.f20184.getPackageName());
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            C5221 c5221 = c5344.f20350;
            String concat = valueOf.concat("_preferences");
            c5221.m10216(concat, "Default prefs file");
            this.f20026 = c5322.f20184.getSharedPreferences(concat, 0);
        }
        return this.f20026;
    }

    @Override // p447.AbstractC5276
    /* renamed from: ﹶˎ */
    public final boolean mo10205() {
        return true;
    }

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public final SparseArray m10551() {
        Bundle bundle = this.f20042.ʼᐧ();
        int[] intArray = bundle.getIntArray("uriSources");
        long[] longArray = bundle.getLongArray("uriTimestamps");
        if (intArray == null || longArray == null) {
            return new SparseArray();
        }
        if (intArray.length != longArray.length) {
            C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
            C5322.m10556(c5344);
            c5344.f20343.m10217("Trigger URI source and timestamp array lengths do not match");
            return new SparseArray();
        }
        SparseArray sparseArray = new SparseArray();
        for (int i = 0; i < intArray.length; i++) {
            sparseArray.put(intArray[i], Long.valueOf(longArray[i]));
        }
        return sparseArray;
    }
}
