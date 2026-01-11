.class public abstract Lcom/google/android/gms/internal/play_billing/ˈʿ;
.super Lcom/google/android/gms/internal/play_billing/ᵎᵔ;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/ᴵˑ;


# static fields
.field public static final ˈٴ:Ljava/lang/Object;

.field public static final ˊʻ:Z

.field public static final ٴᵢ:Lʽٴ/ˈ;

.field public static final ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ˈⁱ;


# instance fields
.field public volatile ʽʽ:Lcom/google/android/gms/internal/play_billing/ᵔٴ;

.field public volatile ʾˋ:Ljava/lang/Object;

.field public volatile ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᵎⁱ;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ˈٴ:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ˈⁱ;

    const-class v1, Lcom/google/android/gms/internal/play_billing/ʿᵢ;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/ˈⁱ;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ˈⁱ;

    :try_start_0
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ˊʻ:Z

    const-string v0, "java.runtime.name"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "Android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/ᵎˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v6, v1

    move-object v12, v6

    goto :goto_8

    :catch_1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/ᵔי;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_1
    :goto_2
    :try_start_2
    new-instance v0, Lcom/google/android/gms/internal/play_billing/ˆﾞ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_3
    move-object v2, v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :goto_4
    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/play_billing/ᵎˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4

    :goto_5
    move-object v6, v1

    move-object v12, v2

    goto :goto_8

    :catch_4
    move-exception v0

    :goto_6
    move-object v1, v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    :goto_7
    new-instance v0, Lcom/google/android/gms/internal/play_billing/ᵔי;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_5

    :goto_8
    sput-object v0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ٴᵢ:Lʽٴ/ˈ;

    if-eqz v6, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ˈⁱ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ˈⁱ;->ⁱˊ()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v10, "<clinit>"

    const-string v11, "UnsafeAtomicHelper is broken!"

    const-string v9, "com.google.common.util.concurrent.AbstractFutureState"

    move-object v8, v2

    invoke-virtual/range {v7 .. v12}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ˈⁱ;->ⁱˊ()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v4, "<clinit>"

    const-string v5, "AtomicReferenceFieldUpdaterAtomicHelper is broken!"

    const-string v3, "com.google.common.util.concurrent.AbstractFutureState"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final ˈ(Lcom/google/android/gms/internal/play_billing/ᵔٴ;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/gms/internal/play_billing/ᵔٴ;->ﹳٴ:Ljava/lang/Thread;

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ᵔٴ;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/ᵔٴ;->ʽ:Lcom/google/android/gms/internal/play_billing/ᵔٴ;

    if-eq p1, v1, :cond_3

    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/play_billing/ᵔٴ;->ⁱˊ:Lcom/google/android/gms/internal/play_billing/ᵔٴ;

    iget-object v3, p1, Lcom/google/android/gms/internal/play_billing/ᵔٴ;->ﹳٴ:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    move-object v1, p1

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    iput-object v2, v1, Lcom/google/android/gms/internal/play_billing/ᵔٴ;->ⁱˊ:Lcom/google/android/gms/internal/play_billing/ᵔٴ;

    iget-object p1, v1, Lcom/google/android/gms/internal/play_billing/ᵔٴ;->ﹳٴ:Ljava/lang/Thread;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ٴᵢ:Lʽٴ/ˈ;

    invoke-virtual {v3, p0, p1, v2}, Lʽٴ/ˈ;->ˉٴ(Lcom/google/android/gms/internal/play_billing/ˈʿ;Lcom/google/android/gms/internal/play_billing/ᵔٴ;Lcom/google/android/gms/internal/play_billing/ᵔٴ;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_3
    return-void
.end method
