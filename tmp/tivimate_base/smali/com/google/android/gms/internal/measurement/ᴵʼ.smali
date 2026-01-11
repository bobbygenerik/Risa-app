.class public final synthetic Lcom/google/android/gms/internal/measurement/ᴵʼ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic ﹳٴ:Lcom/google/android/gms/internal/measurement/ᴵʼ;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/ᴵʼ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ᴵʼ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ᴵʼ;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/ـʾ;

    const-string v1, "internal.platform"

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/ـʾ;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/ـʾ;

    const/4 v2, 0x3

    const-string v3, "getVersion"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ـʾ;-><init>(ILjava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ᴵˊ:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
