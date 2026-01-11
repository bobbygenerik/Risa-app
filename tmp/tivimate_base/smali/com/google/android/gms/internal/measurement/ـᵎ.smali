.class public final Lcom/google/android/gms/internal/measurement/ـᵎ;
.super Lcom/google/android/gms/internal/measurement/ʼﹶ;
.source "SourceFile"


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/measurement/ـᵎ;


# instance fields
.field private zzb:I

.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/measurement/ʻˈ;

.field private zzg:Z

.field private zzh:Lcom/google/android/gms/internal/measurement/ˑ;

.field private zzi:Z

.field private zzj:Z

.field private zzk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ـᵎ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ـᵎ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zzl:Lcom/google/android/gms/internal/measurement/ـᵎ;

    const-class v1, Lcom/google/android/gms/internal/measurement/ـᵎ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉʿ(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zze:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˏʽ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˏʽ;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zzf:Lcom/google/android/gms/internal/measurement/ʻˈ;

    return-void
.end method

.method public static ᴵˊ()Lcom/google/android/gms/internal/measurement/ᵎʻ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zzl:Lcom/google/android/gms/internal/measurement/ـᵎ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ᵔᵢ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵎʻ;

    return-object v0
.end method


# virtual methods
.method public final ʻٴ()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zzb:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ʼʼ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zzj:Z

    return v0
.end method

.method public final ʼᐧ()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic ʽʽ(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zze:Ljava/lang/String;

    return-void
.end method

.method public final ʽﹳ(I)Lcom/google/android/gms/internal/measurement/ᐧﹶ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zzf:Lcom/google/android/gms/internal/measurement/ʻˈ;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ᐧﹶ;

    return-object p1
.end method

.method public final ʾˋ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zzk:Z

    return v0
.end method

.method public final ʾᵎ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zzi:Z

    return v0
.end method

.method public final ˈٴ(ILcom/google/android/gms/internal/measurement/ᐧﹶ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zzf:Lcom/google/android/gms/internal/measurement/ʻˈ;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/ʼᵎ;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/ʼᵎ;->ʾˋ:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/ʻˈ;->ﹳᐧ(I)Lcom/google/android/gms/internal/measurement/ʻˈ;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zzf:Lcom/google/android/gms/internal/measurement/ʻˈ;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zzf:Lcom/google/android/gms/internal/measurement/ʻˈ;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
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

    sget-object p1, Lcom/google/android/gms/internal/measurement/ـᵎ;->zzl:Lcom/google/android/gms/internal/measurement/ـᵎ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/ᵎʻ;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zzl:Lcom/google/android/gms/internal/measurement/ـᵎ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;-><init>(Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/ـᵎ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/ـᵎ;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const-string v5, "zzb"

    const/4 v6, 0x0

    aput-object v5, p1, v6

    const-string v5, "zzd"

    aput-object v5, p1, v0

    const-string v0, "zze"

    aput-object v0, p1, v4

    const-string v0, "zzf"

    aput-object v0, p1, v3

    const-class v0, Lcom/google/android/gms/internal/measurement/ᐧﹶ;

    aput-object v0, p1, v2

    const-string v0, "zzg"

    aput-object v0, p1, v1

    const-string v0, "zzh"

    const/4 v1, 0x6

    aput-object v0, p1, v1

    const-string v0, "zzi"

    const/4 v1, 0x7

    aput-object v0, p1, v1

    const-string v0, "zzj"

    const/16 v1, 0x8

    aput-object v0, p1, v1

    const-string v0, "zzk"

    const/16 v1, 0x9

    aput-object v0, p1, v1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zzl:Lcom/google/android/gms/internal/measurement/ـᵎ;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ᐧʾ;

    const-string v2, "\u0004\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0003\u001b\u0004\u1007\u0002\u0005\u1009\u0003\u0006\u1007\u0004\u0007\u1007\u0005\u0008\u1007\u0006"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/ᐧʾ;-><init>(Lcom/google/android/gms/internal/measurement/ﾞי;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final ˏי()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zzf:Lcom/google/android/gms/internal/measurement/ʻˈ;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final יـ()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zzf:Lcom/google/android/gms/internal/measurement/ʻˈ;

    return-object v0
.end method

.method public final ـˆ()Lcom/google/android/gms/internal/measurement/ˑ;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zzh:Lcom/google/android/gms/internal/measurement/ˑ;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˑ;->ʼʼ()Lcom/google/android/gms/internal/measurement/ˑ;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final ᵔﹳ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zzd:I

    return v0
.end method

.method public final ᵢˏ()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zzb:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ﹳᐧ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ـᵎ;->zze:Ljava/lang/String;

    return-object v0
.end method
