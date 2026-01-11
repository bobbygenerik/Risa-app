.class public final Lcom/google/android/gms/internal/play_billing/ˊﾞ;
.super Lcom/google/android/gms/internal/play_billing/ʼـ;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/ˊﾞ;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:Ljava/lang/String;

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/ˊﾞ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->zzb:Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    const-class v1, Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ٴﹶ(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/ʼـ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/ʼـ;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ʼᐧ(Lcom/google/android/gms/internal/play_billing/ˊﾞ;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->zzi:I

    return-void
.end method

.method public static synthetic ˉˆ(Lcom/google/android/gms/internal/play_billing/ˊﾞ;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static יـ()Lcom/google/android/gms/internal/play_billing/ˊˊ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->zzb:Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ﾞᴵ()Lcom/google/android/gms/internal/play_billing/ˑ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ˊˊ;

    return-object v0
.end method

.method public static synthetic ᵔʾ(Lcom/google/android/gms/internal/play_billing/ˊﾞ;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static ᵔﹳ(Lcom/google/android/gms/internal/play_billing/ˊﾞ;I)V
    .locals 0

    invoke-static {p1}, Landroid/support/v4/media/session/ﹳٴ;->ˈ(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->zzd:I

    return-void
.end method

.method public static synthetic ﹳᐧ(Lcom/google/android/gms/internal/play_billing/ˊﾞ;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->zze:I

    return-void
.end method


# virtual methods
.method public final ˈ(I)Ljava/lang/Object;
    .locals 7

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

    sget-object p1, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->zzb:Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/ˊˊ;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->zzb:Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/play_billing/ˑ;-><init>(Lcom/google/android/gms/internal/play_billing/ʼـ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/ˊﾞ;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const-string v5, "zzd"

    const/4 v6, 0x0

    aput-object v5, p1, v6

    const-string v5, "zze"

    aput-object v5, p1, v0

    const-string v0, "zzf"

    aput-object v0, p1, v4

    const-string v0, "zzg"

    aput-object v0, p1, v3

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˊᵔ;->ˈ:Lcom/google/android/gms/internal/play_billing/ˊᵔ;

    aput-object v0, p1, v2

    const-string v0, "zzh"

    aput-object v0, p1, v1

    const-string v0, "zzi"

    const/4 v1, 0x6

    aput-object v0, p1, v1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->zzb:Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/ʽˑ;

    const-string v2, "\u0004\u0005\u0000\u0001\u0001\u0007\u0005\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0004\u180c\u0002\u0005\u1008\u0003\u0007\u1004\u0004"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/ʽˑ;-><init>(Lcom/google/android/gms/internal/play_billing/ـﹶ;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
