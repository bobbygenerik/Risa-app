.class public final Lcom/google/android/gms/internal/measurement/ˆˎ;
.super Lcom/google/android/gms/internal/measurement/ʼﹶ;
.source "SourceFile"


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/measurement/ˆˎ;


# instance fields
.field private zzb:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/measurement/ˑʿ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ˆˎ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ˆˎ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ˆˎ;->zzf:Lcom/google/android/gms/internal/measurement/ˆˎ;

    const-class v1, Lcom/google/android/gms/internal/measurement/ˆˎ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉʿ(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/ـˉ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ـˉ;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ˆˎ;->zze:Lcom/google/android/gms/internal/measurement/ˑʿ;

    return-void
.end method

.method public static ʽﹳ()Lcom/google/android/gms/internal/measurement/ˆﹳ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˆˎ;->zzf:Lcom/google/android/gms/internal/measurement/ˆˎ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ᵔᵢ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˆﹳ;

    return-object v0
.end method


# virtual methods
.method public final synthetic ʻٴ(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˆˎ;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ˆˎ;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/ˆˎ;->zzd:I

    return-void
.end method

.method public final ʼᐧ()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˆˎ;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
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

    sget-object p1, Lcom/google/android/gms/internal/measurement/ˆˎ;->zzf:Lcom/google/android/gms/internal/measurement/ˆˎ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/ˆﹳ;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˆˎ;->zzf:Lcom/google/android/gms/internal/measurement/ˆˎ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;-><init>(Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/ˆˎ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/ˆˎ;-><init>()V

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

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˆˎ;->zzf:Lcom/google/android/gms/internal/measurement/ˆˎ;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ᐧʾ;

    const-string v2, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u0014"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/ᐧʾ;-><init>(Lcom/google/android/gms/internal/measurement/ﾞי;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final ˏי(I)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˆˎ;->zze:Lcom/google/android/gms/internal/measurement/ˑʿ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ـˉ;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ـˉ;->ⁱˊ(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final יـ()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˆˎ;->zze:Lcom/google/android/gms/internal/measurement/ˑʿ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ـˉ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ـˉ;->size()I

    move-result v0

    return v0
.end method

.method public final ـˆ(Ljava/util/List;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˆˎ;->zze:Lcom/google/android/gms/internal/measurement/ˑʿ;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/ʼᵎ;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/ʼᵎ;->ʾˋ:Z

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ـˉ;

    iget v1, v0, Lcom/google/android/gms/internal/measurement/ـˉ;->ʽʽ:I

    add-int/2addr v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ـˉ;->ˈ(I)Lcom/google/android/gms/internal/measurement/ـˉ;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ˆˎ;->zze:Lcom/google/android/gms/internal/measurement/ˑʿ;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˆˎ;->zze:Lcom/google/android/gms/internal/measurement/ˑʿ;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/ﾞי;->ʽ(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final ᵔﹳ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˆˎ;->zzd:I

    return v0
.end method

.method public final ﹳᐧ()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˆˎ;->zze:Lcom/google/android/gms/internal/measurement/ˑʿ;

    return-object v0
.end method
