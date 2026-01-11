.class public final Lcom/google/android/gms/internal/play_billing/ـʻ;
.super Lcom/google/android/gms/internal/play_billing/ʼـ;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/ـʻ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ـʻ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/ʼـ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ـʻ;->zzb:Lcom/google/android/gms/internal/play_billing/ـʻ;

    const-class v1, Lcom/google/android/gms/internal/play_billing/ـʻ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ٴﹶ(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/ʼـ;)V

    return-void
.end method

.method public static ᵔʾ()Lcom/google/android/gms/internal/play_billing/ـʻ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ـʻ;->zzb:Lcom/google/android/gms/internal/play_billing/ـʻ;

    return-object v0
.end method


# virtual methods
.method public final ˈ(I)Ljava/lang/Object;
    .locals 3

    .prologue
    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/play_billing/ـʻ;->zzb:Lcom/google/android/gms/internal/play_billing/ـʻ;

    return-object p1

    :cond_0
    throw v1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/ᐧﾞ;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ـʻ;->zzb:Lcom/google/android/gms/internal/play_billing/ـʻ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/play_billing/ˑ;-><init>(Lcom/google/android/gms/internal/play_billing/ʼـ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/ـʻ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/ʼـ;-><init>()V

    return-object p1

    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/play_billing/ـʻ;->zzb:Lcom/google/android/gms/internal/play_billing/ـʻ;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ʽˑ;

    const-string v2, "\u0004\u0000"

    invoke-direct {v0, p1, v2, v1}, Lcom/google/android/gms/internal/play_billing/ʽˑ;-><init>(Lcom/google/android/gms/internal/play_billing/ـﹶ;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
