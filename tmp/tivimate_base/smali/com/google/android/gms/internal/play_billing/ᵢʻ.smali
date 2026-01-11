.class public final Lcom/google/android/gms/internal/play_billing/ᵢʻ;
.super Lcom/google/android/gms/internal/play_billing/ʼـ;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/ᵢʻ;


# instance fields
.field private zzd:I

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ᵢʻ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/ʼـ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ᵢʻ;->zzb:Lcom/google/android/gms/internal/play_billing/ᵢʻ;

    const-class v1, Lcom/google/android/gms/internal/play_billing/ᵢʻ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ٴﹶ(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/ʼـ;)V

    return-void
.end method


# virtual methods
.method public final ˈ(I)Ljava/lang/Object;
    .locals 4

    .prologue
    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/play_billing/ᵢʻ;->zzb:Lcom/google/android/gms/internal/play_billing/ᵢʻ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/ᐧﾞ;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ᵢʻ;->zzb:Lcom/google/android/gms/internal/play_billing/ᵢʻ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/play_billing/ˑ;-><init>(Lcom/google/android/gms/internal/play_billing/ʼـ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/ᵢʻ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/ʼـ;-><init>()V

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "zzd"

    const/4 v3, 0x0

    aput-object v1, p1, v3

    const-string v1, "zze"

    aput-object v1, p1, v0

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˊᵔ;->ᵎﹶ:Lcom/google/android/gms/internal/play_billing/ˊᵔ;

    aput-object v0, p1, v2

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ᵢʻ;->zzb:Lcom/google/android/gms/internal/play_billing/ᵢʻ;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/ʽˑ;

    const-string v2, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u180c\u0000"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/ʽˑ;-><init>(Lcom/google/android/gms/internal/play_billing/ـﹶ;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
