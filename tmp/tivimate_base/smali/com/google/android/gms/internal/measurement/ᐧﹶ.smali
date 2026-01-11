.class public final Lcom/google/android/gms/internal/measurement/ᐧﹶ;
.super Lcom/google/android/gms/internal/measurement/ʼﹶ;
.source "SourceFile"


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/measurement/ᐧﹶ;


# instance fields
.field private zzb:I

.field private zzd:Lcom/google/android/gms/internal/measurement/יﹳ;

.field private zze:Lcom/google/android/gms/internal/measurement/ˑ;

.field private zzf:Z

.field private zzg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ᐧﹶ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ᐧﹶ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ᐧﹶ;->zzh:Lcom/google/android/gms/internal/measurement/ᐧﹶ;

    const-class v1, Lcom/google/android/gms/internal/measurement/ᐧﹶ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉʿ(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ᐧﹶ;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static ʾᵎ()Lcom/google/android/gms/internal/measurement/ᐧﹶ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ᐧﹶ;->zzh:Lcom/google/android/gms/internal/measurement/ᐧﹶ;

    return-object v0
.end method


# virtual methods
.method public final ʻٴ()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ᐧﹶ;->zzb:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic ʼʼ(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ᐧﹶ;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ᐧﹶ;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ᐧﹶ;->zzg:Ljava/lang/String;

    return-void
.end method

.method public final ʼᐧ()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ᐧﹶ;->zzb:I

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

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ᐧﹶ;->zzf:Z

    return v0
.end method

.method public final ˉˆ(I)Ljava/lang/Object;
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

    sget-object p1, Lcom/google/android/gms/internal/measurement/ᐧﹶ;->zzh:Lcom/google/android/gms/internal/measurement/ᐧﹶ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/ʽᵔ;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ᐧﹶ;->zzh:Lcom/google/android/gms/internal/measurement/ᐧﹶ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;-><init>(Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/ᐧﹶ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/ᐧﹶ;-><init>()V

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "zzb"

    const/4 v5, 0x0

    aput-object v1, p1, v5

    const-string v1, "zzd"

    aput-object v1, p1, v0

    const-string v0, "zze"

    aput-object v0, p1, v4

    const-string v0, "zzf"

    aput-object v0, p1, v3

    const-string v0, "zzg"

    aput-object v0, p1, v2

    sget-object v0, Lcom/google/android/gms/internal/measurement/ᐧﹶ;->zzh:Lcom/google/android/gms/internal/measurement/ᐧﹶ;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ᐧʾ;

    const-string v2, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1007\u0002\u0004\u1008\u0003"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/ᐧʾ;-><init>(Lcom/google/android/gms/internal/measurement/ﾞי;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final ˏי()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ᐧﹶ;->zzb:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final יـ()Lcom/google/android/gms/internal/measurement/ˑ;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᐧﹶ;->zze:Lcom/google/android/gms/internal/measurement/ˑ;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˑ;->ʼʼ()Lcom/google/android/gms/internal/measurement/ˑ;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final ـˆ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᐧﹶ;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final ᵔﹳ()Lcom/google/android/gms/internal/measurement/יﹳ;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᐧﹶ;->zzd:Lcom/google/android/gms/internal/measurement/יﹳ;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/יﹳ;->ـˆ()Lcom/google/android/gms/internal/measurement/יﹳ;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final ﹳᐧ()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ᐧﹶ;->zzb:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
