.class public final Lcom/google/android/gms/internal/play_billing/ᵔⁱ;
.super Lcom/google/android/gms/internal/play_billing/ʼـ;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/ᵔⁱ;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/play_billing/ˊﾞ;

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->zzb:Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    const-class v1, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ٴﹶ(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/ʼـ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/ʼـ;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->zze:I

    return-void
.end method

.method public static ʼᐧ(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;Lcom/google/android/gms/internal/play_billing/ˏⁱ;)V
    .locals 0

    iget p1, p1, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ʾˋ:I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->zzi:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->zzd:I

    return-void
.end method

.method public static ʽﹳ()Lcom/google/android/gms/internal/play_billing/ﹶʽ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->zzb:Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ﾞᴵ()Lcom/google/android/gms/internal/play_billing/ˑ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ﹶʽ;

    return-object v0
.end method

.method public static synthetic ˏי(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->zzd:I

    return-void
.end method

.method public static synthetic יـ(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;Lcom/google/android/gms/internal/play_billing/ˎʼ;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->zzf:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->zze:I

    return-void
.end method

.method public static ᵔʾ([BLcom/google/android/gms/internal/play_billing/ᵎʻ;)Lcom/google/android/gms/internal/play_billing/ᵔⁱ;
    .locals 7

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->zzb:Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    array-length v5, p0

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->ˈ(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/play_billing/ʼـ;

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/ⁱᴵ;->ʽ:Lcom/google/android/gms/internal/play_billing/ⁱᴵ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/ⁱᴵ;->ﹳٴ(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/ˋˊ;

    move-result-object v1

    new-instance v6, Lcom/google/android/gms/internal/measurement/ˈʻ;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/ˋˊ;->ᵎﹶ(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/ˈʻ;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/play_billing/ˋˊ;->ⁱˊ(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/play_billing/zzfq; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/play_billing/zzhg; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ʽ(Lcom/google/android/gms/internal/play_billing/ʼـ;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzhg;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfq;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    check-cast v0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    return-object v0

    :catch_0
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzfq;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/play_billing/zzfq;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzfq;

    throw p0

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfq;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception v0

    move-object p0, v0

    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfq;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    move-exception v0

    move-object p0, v0

    throw p0
.end method

.method public static synthetic ᵔﹳ(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;Lcom/google/android/gms/internal/play_billing/ˊﾞ;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->zzh:Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->zzd:I

    return-void
.end method

.method public static synthetic ﹳᐧ(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;Lcom/google/android/gms/internal/play_billing/ʻʼ;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->zzf:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->zze:I

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

    sget-object p1, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->zzb:Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/ﹶʽ;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->zzb:Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/play_billing/ˑ;-><init>(Lcom/google/android/gms/internal/play_billing/ʼـ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xb

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

    const-string v0, "zzh"

    aput-object v0, p1, v1

    const-class v0, Lcom/google/android/gms/internal/play_billing/ᵢʻ;

    const/4 v1, 0x6

    aput-object v0, p1, v1

    const-string v0, "zzi"

    const/4 v1, 0x7

    aput-object v0, p1, v1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˊᵔ;->ˑﹳ:Lcom/google/android/gms/internal/play_billing/ˊᵔ;

    const/16 v1, 0x8

    aput-object v0, p1, v1

    const-class v0, Lcom/google/android/gms/internal/play_billing/ˎʼ;

    const/16 v1, 0x9

    aput-object v0, p1, v1

    const-class v0, Lcom/google/android/gms/internal/play_billing/ʻʼ;

    const/16 v1, 0xa

    aput-object v0, p1, v1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->zzb:Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/ʽˑ;

    const-string v2, "\u0004\u0006\u0001\u0001\u0001\u0007\u0006\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1009\u0001\u0004<\u0000\u0005\u180c\u0002\u0006<\u0000\u0007<\u0000"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/ʽˑ;-><init>(Lcom/google/android/gms/internal/play_billing/ـﹶ;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final ˉˆ()Lcom/google/android/gms/internal/play_billing/ʻʼ;
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->zze:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->zzf:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ʻʼ;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ʻʼ;->ˉˆ()Lcom/google/android/gms/internal/play_billing/ʻʼ;

    move-result-object v0

    return-object v0
.end method
