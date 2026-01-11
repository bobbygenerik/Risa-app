package p020;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import ʻʿ.ˈ;
import ﹳי.ʽ;

/* renamed from: ʼˈ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1026 extends InputConnectionWrapper {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ ˈ f4060;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1026(InputConnection inputConnection, ˈ r2) {
        super(inputConnection, false);
        this.f4060 = r2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [ﹳי.ʽ, java.lang.Object] */
    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean performPrivateCommand(String str, Bundle bundle) {
        Object[] objArr;
        ResultReceiver resultReceiver;
        ˈ r0 = this.f4060;
        boolean z = false;
        z = false;
        z = false;
        z = false;
        if (bundle != null) {
            if (TextUtils.equals("androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT", str)) {
                objArr = false;
            } else if (TextUtils.equals("android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT", str)) {
                objArr = true;
            }
            try {
                resultReceiver = (ResultReceiver) bundle.getParcelable(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER");
            } catch (Throwable th) {
                th = th;
                resultReceiver = null;
            }
            try {
                Uri uri = (Uri) bundle.getParcelable(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI");
                ClipDescription clipDescription = (ClipDescription) bundle.getParcelable(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION");
                Uri uri2 = (Uri) bundle.getParcelable(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI");
                int i = bundle.getInt(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS");
                Bundle bundle2 = (Bundle) bundle.getParcelable(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS");
                if (uri != null && clipDescription != null) {
                    ?? obj = new Object();
                    if (Build.VERSION.SDK_INT >= 25) {
                        ((ʽ) obj).ʾˋ = new C1027(uri, clipDescription, uri2);
                    } else {
                        ((ʽ) obj).ʾˋ = new ˑי.ʽ(uri, clipDescription, uri2);
                    }
                    z = r0.ᵔʾ((ʽ) obj, i, bundle2);
                }
                if (resultReceiver != null) {
                    resultReceiver.send(z ? 1 : 0, null);
                }
            } catch (Throwable th2) {
                th = th2;
                if (resultReceiver != null) {
                    resultReceiver.send(0, null);
                }
                throw th;
            }
        }
        if (z) {
            return true;
        }
        return super.performPrivateCommand(str, bundle);
    }
}
