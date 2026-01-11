.class public final Lcom/google/android/gms/internal/play_billing/ʻʼ;
.super Lcom/google/android/gms/internal/play_billing/ʼـ;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/ʻʼ;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/play_billing/ʾﾞ;

.field private zzf:Ljava/lang/String;

.field private zzg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ʻʼ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/ʻʼ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ʻʼ;->zzb:Lcom/google/android/gms/internal/play_billing/ʻʼ;

    const-class v1, Lcom/google/android/gms/internal/play_billing/ʻʼ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ٴﹶ(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/ʼـ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/ʼـ;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ﹶˎ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ﹶˎ;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/ʻʼ;->zze:Lcom/google/android/gms/internal/play_billing/ʾﾞ;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/ʻʼ;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static ˉˆ()Lcom/google/android/gms/internal/play_billing/ʻʼ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ʻʼ;->zzb:Lcom/google/android/gms/internal/play_billing/ʻʼ;

    return-object v0
.end method

.method public static synthetic ᵔʾ(Lcom/google/android/gms/internal/play_billing/ʻʼ;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/ʻʼ;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/ʻʼ;->zzd:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/ʻʼ;->zzg:Z

    return-void
.end method


# virtual methods
.method public final ˈ(I)Ljava/lang/Object;
    .locals 6

    .prologue
    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/play_billing/ʻʼ;->zzb:Lcom/google/android/gms/internal/play_billing/ʻʼ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/ˆﹳ;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ʻʼ;->zzb:Lcom/google/android/gms/internal/play_billing/ʻʼ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/play_billing/ˑ;-><init>(Lcom/google/android/gms/internal/play_billing/ʼـ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/ʻʼ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/ʻʼ;-><init>()V

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "zzd"

    const/4 v5, 0x0

    aput-object v1, p1, v5

    const-string v1, "zze"

    aput-object v1, p1, v0

    const-class v0, Lcom/google/android/gms/internal/play_billing/ˆˎ;

    aput-object v0, p1, v4

    const-string v0, "zzf"

    aput-object v0, p1, v3

    const-string v0, "zzg"

    aput-object v0, p1, v2

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ʻʼ;->zzb:Lcom/google/android/gms/internal/play_billing/ʻʼ;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/ʽˑ;

    const-string v2, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001b\u0002\u1008\u0000\u0003\u1007\u0001"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/ʽˑ;-><init>(Lcom/google/android/gms/internal/play_billing/ـﹶ;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
