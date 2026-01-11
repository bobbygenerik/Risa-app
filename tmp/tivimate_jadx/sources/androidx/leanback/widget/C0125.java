package androidx.leanback.widget;

import android.animation.ObjectAnimator;
import android.os.Bundle;
import android.speech.RecognitionListener;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.view.View;
import java.util.ArrayList;
import java.util.regex.Matcher;
import p223.C3056;
import p384.C4603;

/* renamed from: androidx.leanback.widget.ـﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0125 implements RecognitionListener {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ SearchBar f970;

    public C0125(SearchBar searchBar) {
        this.f970 = searchBar;
    }

    @Override // android.speech.RecognitionListener
    public final void onBeginningOfSpeech() {
    }

    @Override // android.speech.RecognitionListener
    public final void onBufferReceived(byte[] bArr) {
    }

    @Override // android.speech.RecognitionListener
    public final void onEndOfSpeech() {
    }

    @Override // android.speech.RecognitionListener
    public final void onError(int i) {
        switch (i) {
            case 1:
                int i2 = SearchBar.f716;
                break;
            case 2:
                int i3 = SearchBar.f716;
                break;
            case 3:
                int i4 = SearchBar.f716;
                break;
            case 4:
                int i5 = SearchBar.f716;
                break;
            case 5:
                int i6 = SearchBar.f716;
                break;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                int i7 = SearchBar.f716;
                break;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                int i8 = SearchBar.f716;
                break;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                int i9 = SearchBar.f716;
                break;
            case 9:
                int i10 = SearchBar.f716;
                break;
            default:
                int i11 = SearchBar.f716;
                break;
        }
        SearchBar searchBar = this.f970;
        searchBar.m552();
        searchBar.mo460();
    }

    @Override // android.speech.RecognitionListener
    public final void onEvent(int i, Bundle bundle) {
    }

    @Override // android.speech.RecognitionListener
    public final void onPartialResults(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("results_recognition");
        if (stringArrayList == null || stringArrayList.size() == 0) {
            return;
        }
        String str = stringArrayList.get(0);
        String str2 = stringArrayList.size() > 1 ? stringArrayList.get(1) : null;
        SearchEditText searchEditText = this.f970.f734;
        searchEditText.getClass();
        if (str == null) {
            str = "";
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        if (str2 != null) {
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) str2);
            Matcher matcher = AbstractC0093.f862.matcher(str2);
            while (matcher.find()) {
                int start = matcher.start() + length;
                spannableStringBuilder.setSpan(new C0119(searchEditText, str2.charAt(matcher.start()), start), start, matcher.end() + length, 33);
            }
        }
        searchEditText.f866 = Math.max(str.length(), searchEditText.f866);
        searchEditText.setText(new SpannedString(spannableStringBuilder));
        searchEditText.bringPointIntoView(searchEditText.length());
        ObjectAnimator objectAnimator = searchEditText.f868;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        int streamPosition = searchEditText.getStreamPosition();
        int length2 = searchEditText.length();
        int i = length2 - streamPosition;
        if (i > 0) {
            if (searchEditText.f868 == null) {
                ObjectAnimator objectAnimator2 = new ObjectAnimator();
                searchEditText.f868 = objectAnimator2;
                objectAnimator2.setTarget(searchEditText);
                searchEditText.f868.setProperty(AbstractC0093.f863);
            }
            searchEditText.f868.setIntValues(streamPosition, length2);
            searchEditText.f868.setDuration(i * 50);
            searchEditText.f868.start();
        }
    }

    @Override // android.speech.RecognitionListener
    public final void onReadyForSpeech(Bundle bundle) {
        SearchBar searchBar = this.f970;
        SpeechOrbView speechOrbView = searchBar.f718;
        speechOrbView.setOrbColors(speechOrbView.f780);
        speechOrbView.setOrbIcon(speechOrbView.getResources().getDrawable(2131231125));
        speechOrbView.m554(true);
        speechOrbView.f746 = false;
        speechOrbView.m553();
        View view = speechOrbView.f744;
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        speechOrbView.f779 = 0;
        speechOrbView.f777 = true;
        searchBar.mo458();
    }

    @Override // android.speech.RecognitionListener
    public final void onResults(Bundle bundle) {
        InterfaceC0102 interfaceC0102;
        ArrayList<String> stringArrayList = bundle.getStringArrayList("results_recognition");
        SearchBar searchBar = this.f970;
        if (stringArrayList != null) {
            String str = stringArrayList.get(0);
            searchBar.f736 = str;
            searchBar.f734.setText(str);
            if (!TextUtils.isEmpty(searchBar.f736) && (interfaceC0102 = searchBar.f719) != null) {
                ﾞᵔ.ˉٴ.ʽᐧ((ﾞᵔ.ˉٴ) ((C4603) interfaceC0102).f17126, searchBar.f736, true);
            }
        }
        searchBar.m552();
        searchBar.mo459();
    }

    @Override // android.speech.RecognitionListener
    public final void onRmsChanged(float f) {
        this.f970.f718.setSoundLevel(f < 0.0f ? 0 : (int) (f * 10.0f));
    }
}
