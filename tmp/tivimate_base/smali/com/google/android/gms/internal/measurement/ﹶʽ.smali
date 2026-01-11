.class public final Lcom/google/android/gms/internal/measurement/ﹶʽ;
.super Lcom/google/android/gms/internal/measurement/ʼﹶ;
.source "SourceFile"


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/measurement/ﹶʽ;


# instance fields
.field private zzb:I

.field private zzd:I

.field private zze:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ﹶʽ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ﹶʽ;->zzf:Lcom/google/android/gms/internal/measurement/ﹶʽ;

    const-class v1, Lcom/google/android/gms/internal/measurement/ﹶʽ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉʿ(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-void
.end method

.method public static ˏי()Lcom/google/android/gms/internal/measurement/ˋـ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ﹶʽ;->zzf:Lcom/google/android/gms/internal/measurement/ﹶʽ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ᵔᵢ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˋـ;

    return-object v0
.end method


# virtual methods
.method public final synthetic ʻٴ(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ﹶʽ;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ﹶʽ;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ﹶʽ;->zze:J

    return-void
.end method

.method public final ʼᐧ()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ﹶʽ;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic ʽﹳ(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ﹶʽ;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ﹶʽ;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/ﹶʽ;->zzd:I

    return-void
.end method

.method public final ˉˆ(I)Ljava/lang/Object;
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

    sget-object p1, Lcom/google/android/gms/internal/measurement/ﹶʽ;->zzf:Lcom/google/android/gms/internal/measurement/ﹶʽ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/ˋـ;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ﹶʽ;->zzf:Lcom/google/android/gms/internal/measurement/ﹶʽ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;-><init>(Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/ﹶʽ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/ʼﹶ;-><init>()V

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "zzb"

    const/4 v3, 0x0

    aput-object v1, p1, v3

    const-string v1, "zzd"

    aput-object v1, p1, v0

    const-string v0, "zze"

    aput-object v0, p1, v2

    sget-object v0, Lcom/google/android/gms/internal/measurement/ﹶʽ;->zzf:Lcom/google/android/gms/internal/measurement/ﹶʽ;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ᐧʾ;

    const-string v2, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1002\u0001"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/ᐧʾ;-><init>(Lcom/google/android/gms/internal/measurement/ﾞי;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final יـ()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ﹶʽ;->zze:J

    return-wide v0
.end method

.method public final ᵔﹳ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ﹶʽ;->zzd:I

    return v0
.end method

.method public final ﹳᐧ()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ﹶʽ;->zzb:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
