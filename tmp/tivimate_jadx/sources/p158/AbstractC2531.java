package p158;

import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.media.AudioProfile;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p017.AbstractC0993;
import p017.C0968;
import p055.C1471;
import p305.AbstractC3712;
import p384.C4603;
import p425.C5049;
import p425.C5050;
import ˈˊ.ˉˆ;

/* renamed from: ˊˋ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2531 {
    /* renamed from: ʽ, reason: contains not printable characters */
    public static String m5653(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getUniqueId();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static boolean m5654(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.isTextSelectable();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C4603 m5655(AudioManager audioManager, C1471 c1471) {
        audioManager.getClass();
        List<AudioDeviceInfo> audioDevicesForAttributes = audioManager.getAudioDevicesForAttributes((AudioAttributes) c1471.m4277().ʾˋ);
        if (audioDevicesForAttributes.isEmpty()) {
            return null;
        }
        return new C4603(audioDevicesForAttributes.get(0));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C5049 m5656(AudioManager audioManager, C1471 c1471) {
        List<AudioProfile> directProfilesForAttributes = audioManager.getDirectProfilesForAttributes((AudioAttributes) c1471.m4277().ʾˋ);
        HashMap hashMap = new HashMap();
        hashMap.put(2, new HashSet(ˉˆ.ⁱˊ(new int[]{12})));
        for (int i = 0; i < directProfilesForAttributes.size(); i++) {
            AudioProfile audioProfile = directProfilesForAttributes.get(i);
            if (audioProfile.getEncapsulationType() != 1) {
                int format = audioProfile.getFormat();
                if (AbstractC3712.m7770(format) || C5049.f18993.containsKey(Integer.valueOf(format))) {
                    if (hashMap.containsKey(Integer.valueOf(format))) {
                        Set set = (Set) hashMap.get(Integer.valueOf(format));
                        set.getClass();
                        set.addAll(ˉˆ.ⁱˊ(audioProfile.getChannelMasks()));
                    } else {
                        hashMap.put(Integer.valueOf(format), new HashSet(ˉˆ.ⁱˊ(audioProfile.getChannelMasks())));
                    }
                }
            }
        }
        C0968 m3261 = AbstractC0993.m3261();
        for (Map.Entry entry : hashMap.entrySet()) {
            m3261.m3239(new C5050(((Integer) entry.getKey()).intValue(), (Set) entry.getValue()));
        }
        return new C5049(m3261.m3249());
    }
}
