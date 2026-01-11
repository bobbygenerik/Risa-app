.class public final Lcom/google/android/gms/internal/play_billing/ʻᵎ;
.super Lcom/google/android/gms/internal/play_billing/ʼـ;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/ʻᵎ;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ʻᵎ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/ʻᵎ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ʻᵎ;->zzb:Lcom/google/android/gms/internal/play_billing/ʻᵎ;

    const-class v1, Lcom/google/android/gms/internal/play_billing/ʻᵎ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ٴﹶ(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/ʼـ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/ʼـ;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/ʻᵎ;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ˈ(I)Ljava/lang/Object;
    .locals 3

    .prologue
    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/play_billing/ʻᵎ;->zzb:Lcom/google/android/gms/internal/play_billing/ʻᵎ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/ᐧﾞ;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ʻᵎ;->zzb:Lcom/google/android/gms/internal/play_billing/ʻᵎ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/play_billing/ˑ;-><init>(Lcom/google/android/gms/internal/play_billing/ʼـ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/ʻᵎ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/ʻᵎ;-><init>()V

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "zzd"

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-string v1, "zze"

    aput-object v1, p1, v0

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ʻᵎ;->zzb:Lcom/google/android/gms/internal/play_billing/ʻᵎ;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/ʽˑ;

    const-string v2, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u1008\u0000"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/ʽˑ;-><init>(Lcom/google/android/gms/internal/play_billing/ـﹶ;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
