package com.google.firebase.installations;

import com.google.firebase.FirebaseException;
import p296.AbstractC3659;

/* loaded from: classes.dex */
public class FirebaseInstallationsException extends FirebaseException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseInstallationsException(String str) {
        super(str);
        AbstractC3659.m7681(str, "Detail message must not be empty");
    }
}
