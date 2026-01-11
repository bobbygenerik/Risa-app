package p127;

import android.content.Context;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import p035.AbstractC1220;
import p229.C3125;
import p411.AbstractC4901;

/* renamed from: ˈـ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2150 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f8366;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f8367;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f8368;

    public /* synthetic */ C2150(int i, String str, String str2) {
        this.f8368 = i;
        this.f8367 = str;
        this.f8366 = str2;
    }

    public C2150(C3125 c3125) {
        this.f8368 = 1;
        Context context = (Context) c3125.f11943;
        int m9700 = AbstractC4901.m9700(context, "com.google.firebase.crashlytics.unity_version", "string");
        if (m9700 != 0) {
            this.f8367 = "Unity";
            String string = context.getResources().getString(m9700);
            this.f8366 = string;
            AbstractC1220.m3771("Unity Editor version is: ", string);
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            }
            return;
        }
        if (context.getAssets() != null) {
            try {
                InputStream open = context.getAssets().open("flutter_assets/NOTICES.Z");
                if (open != null) {
                    open.close();
                }
                this.f8367 = "Flutter";
                this.f8366 = null;
                if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                    return;
                } else {
                    return;
                }
            } catch (IOException unused) {
                this.f8367 = null;
                this.f8366 = null;
            }
        }
        this.f8367 = null;
        this.f8366 = null;
    }

    public String toString() {
        switch (this.f8368) {
            case 2:
                return this.f8367 + ", " + this.f8366;
            default:
                return super.toString();
        }
    }
}
