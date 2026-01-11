.class public final Lcom/google/android/gms/internal/play_billing/ﾞˏ;
.super Lcom/google/android/gms/internal/play_billing/ʼـ;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/ﾞˏ;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:I

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ﾞˏ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/ﾞˏ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->zzb:Lcom/google/android/gms/internal/play_billing/ﾞˏ;

    const-class v1, Lcom/google/android/gms/internal/play_billing/ﾞˏ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ٴﹶ(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/ʼـ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/ʼـ;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->zze:I

    return-void
.end method

.method public static synthetic ʼᐧ(Lcom/google/android/gms/internal/play_billing/ﾞˏ;Lcom/google/android/gms/internal/play_billing/ʻʼ;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->zzf:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->zze:I

    return-void
.end method

.method public static ˉˆ(Lcom/google/android/gms/internal/play_billing/ﾞˏ;Lcom/google/android/gms/internal/play_billing/ˏⁱ;)V
    .locals 0

    iget p1, p1, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ʾˋ:I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->zzh:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->zzd:I

    return-void
.end method

.method public static יـ()Lcom/google/android/gms/internal/play_billing/ٴʿ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->zzb:Lcom/google/android/gms/internal/play_billing/ﾞˏ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ﾞᴵ()Lcom/google/android/gms/internal/play_billing/ˑ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ٴʿ;

    return-object v0
.end method

.method public static synthetic ᵔﹳ(Lcom/google/android/gms/internal/play_billing/ﾞˏ;Lcom/google/android/gms/internal/play_billing/ˎʼ;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->zzf:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->zze:I

    return-void
.end method

.method public static synthetic ﹳᐧ(Lcom/google/android/gms/internal/play_billing/ﾞˏ;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->zzd:I

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

    sget-object p1, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->zzb:Lcom/google/android/gms/internal/play_billing/ﾞˏ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/ٴʿ;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->zzb:Lcom/google/android/gms/internal/play_billing/ﾞˏ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/play_billing/ˑ;-><init>(Lcom/google/android/gms/internal/play_billing/ʼـ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/ﾞˏ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/ﾞˏ;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const-string v5, "zzf"

    const/4 v6, 0x0

    aput-object v5, p1, v6

    const-string v5, "zze"

    aput-object v5, p1, v0

    const-string v0, "zzd"

    aput-object v0, p1, v4

    const-string v0, "zzg"

    aput-object v0, p1, v3

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˊᵔ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˊᵔ;

    aput-object v0, p1, v2

    const-class v0, Lcom/google/android/gms/internal/play_billing/ᵢʻ;

    aput-object v0, p1, v1

    const-class v0, Lcom/google/android/gms/internal/play_billing/ˎʼ;

    const/4 v1, 0x6

    aput-object v0, p1, v1

    const-class v0, Lcom/google/android/gms/internal/play_billing/ʻʼ;

    const/4 v1, 0x7

    aput-object v0, p1, v1

    const-string v0, "zzh"

    const/16 v1, 0x8

    aput-object v0, p1, v1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˊᵔ;->ˑﹳ:Lcom/google/android/gms/internal/play_billing/ˊᵔ;

    const/16 v1, 0x9

    aput-object v0, p1, v1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->zzb:Lcom/google/android/gms/internal/play_billing/ﾞˏ;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/ʽˑ;

    const-string v2, "\u0004\u0005\u0001\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u180c\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005\u180c\u0001"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/ʽˑ;-><init>(Lcom/google/android/gms/internal/play_billing/ـﹶ;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final ᵔʾ()Lcom/google/android/gms/internal/play_billing/ʻʼ;
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->zze:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->zzf:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ʻʼ;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ʻʼ;->ˉˆ()Lcom/google/android/gms/internal/play_billing/ʻʼ;

    move-result-object v0

    return-object v0
.end method
