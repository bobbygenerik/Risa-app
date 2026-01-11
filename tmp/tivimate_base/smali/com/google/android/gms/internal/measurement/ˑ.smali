.class public final Lcom/google/android/gms/internal/measurement/ˑ;
.super Lcom/google/android/gms/internal/measurement/ʼﹶ;
.source "SourceFile"


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/ˑ;


# instance fields
.field private zzb:I

.field private zzd:I

.field private zze:Z

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ˑ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ˑ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ˑ;->zzi:Lcom/google/android/gms/internal/measurement/ˑ;

    const-class v1, Lcom/google/android/gms/internal/measurement/ˑ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉʿ(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ˑ;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ˑ;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ˑ;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static ʼʼ()Lcom/google/android/gms/internal/measurement/ˑ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˑ;->zzi:Lcom/google/android/gms/internal/measurement/ˑ;

    return-object v0
.end method


# virtual methods
.method public final ʻٴ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˑ;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final ʼᐧ()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˑ;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ʽﹳ()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˑ;->zzb:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ʾᵎ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˑ;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final ˉˆ(I)Ljava/lang/Object;
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

    sget-object p1, Lcom/google/android/gms/internal/measurement/ˑ;->zzi:Lcom/google/android/gms/internal/measurement/ˑ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/י;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˑ;->zzi:Lcom/google/android/gms/internal/measurement/ˑ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;-><init>(Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/ˑ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/ˑ;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const-string v5, "zzb"

    const/4 v6, 0x0

    aput-object v5, p1, v6

    const-string v5, "zzd"

    aput-object v5, p1, v0

    sget-object v0, Lcom/google/android/gms/internal/measurement/ʾˊ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ʾˊ;

    aput-object v0, p1, v4

    const-string v0, "zze"

    aput-object v0, p1, v3

    const-string v0, "zzf"

    aput-object v0, p1, v2

    const-string v0, "zzg"

    aput-object v0, p1, v1

    const-string v0, "zzh"

    const/4 v1, 0x6

    aput-object v0, p1, v1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˑ;->zzi:Lcom/google/android/gms/internal/measurement/ˑ;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ᐧʾ;

    const-string v2, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1007\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/ᐧʾ;-><init>(Lcom/google/android/gms/internal/measurement/ﾞי;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final ˏי()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˑ;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final יـ()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˑ;->zzb:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ـˆ()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˑ;->zzb:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ᵔﹳ()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˑ;->zzb:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ᵢˏ()I
    .locals 4

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˑ;->zzd:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v1, :cond_3

    const/4 v3, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public final ﹳᐧ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ˑ;->zze:Z

    return v0
.end method
