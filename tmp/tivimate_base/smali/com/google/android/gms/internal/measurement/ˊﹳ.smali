.class public final Lcom/google/android/gms/internal/measurement/ˊﹳ;
.super Lcom/google/android/gms/internal/measurement/ʼﹶ;
.source "SourceFile"


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/measurement/ˊﹳ;


# instance fields
.field private zzb:I

.field private zzd:Lcom/google/android/gms/internal/measurement/ʻˈ;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ˊﹳ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ˊﹳ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzh:Lcom/google/android/gms/internal/measurement/ˊﹳ;

    const-class v1, Lcom/google/android/gms/internal/measurement/ˊﹳ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉʿ(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˏʽ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˏʽ;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzd:Lcom/google/android/gms/internal/measurement/ʻˈ;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static ʾᵎ(Lcom/google/android/gms/internal/measurement/ˊﹳ;)Lcom/google/android/gms/internal/measurement/ˏⁱ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzh:Lcom/google/android/gms/internal/measurement/ˊﹳ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ᵔᵢ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᵔᵢ(Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˏⁱ;

    return-object v0
.end method

.method public static ـˆ()Lcom/google/android/gms/internal/measurement/ˏⁱ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzh:Lcom/google/android/gms/internal/measurement/ˊﹳ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ᵔᵢ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˏⁱ;

    return-object v0
.end method


# virtual methods
.method public final ʻٴ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic ʼʼ(ILcom/google/android/gms/internal/measurement/ˆˑ;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ˊﹳ;->ᴵᵔ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzd:Lcom/google/android/gms/internal/measurement/ʻˈ;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ʼᐧ()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzd:Lcom/google/android/gms/internal/measurement/ʻˈ;

    return-object v0
.end method

.method public final synthetic ʽʽ(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zze:Ljava/lang/String;

    return-void
.end method

.method public final ʽﹳ()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzb:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic ʾˋ(Ljava/util/ArrayList;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ˊﹳ;->ᴵᵔ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzd:Lcom/google/android/gms/internal/measurement/ʻˈ;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/ﾞי;->ʽ(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic ˈٴ(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzf:Ljava/lang/String;

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

    sget-object p1, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzh:Lcom/google/android/gms/internal/measurement/ˊﹳ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/ˏⁱ;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzh:Lcom/google/android/gms/internal/measurement/ˊﹳ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;-><init>(Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/ˊﹳ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/ˊﹳ;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const-string v5, "zzb"

    const/4 v6, 0x0

    aput-object v5, p1, v6

    const-string v5, "zzd"

    aput-object v5, p1, v0

    const-class v0, Lcom/google/android/gms/internal/measurement/ˆˑ;

    aput-object v0, p1, v4

    const-string v0, "zze"

    aput-object v0, p1, v3

    const-string v0, "zzf"

    aput-object v0, p1, v2

    const-string v0, "zzg"

    aput-object v0, p1, v1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ʾˊ;->ˆʾ:Lcom/google/android/gms/internal/measurement/ʾˊ;

    const/4 v1, 0x6

    aput-object v0, p1, v1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzh:Lcom/google/android/gms/internal/measurement/ˊﹳ;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ᐧʾ;

    const-string v2, "\u0004\u0004\u0000\u0001\u0001\t\u0004\u0000\u0001\u0000\u0001\u001b\u0007\u1008\u0000\u0008\u1008\u0001\t\u180c\u0002"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/ᐧʾ;-><init>(Lcom/google/android/gms/internal/measurement/ﾞי;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final ˏי()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final יـ()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ᴵˊ()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˏʽ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˏʽ;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzd:Lcom/google/android/gms/internal/measurement/ʻˈ;

    return-void
.end method

.method public final ᴵᵔ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzd:Lcom/google/android/gms/internal/measurement/ʻˈ;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/ʼᵎ;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/ʼᵎ;->ʾˋ:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/ʻˈ;->ﹳᐧ(I)Lcom/google/android/gms/internal/measurement/ʻˈ;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzd:Lcom/google/android/gms/internal/measurement/ʻˈ;

    :cond_0
    return-void
.end method

.method public final ᵔﹳ()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzd:Lcom/google/android/gms/internal/measurement/ʻˈ;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic ᵢˏ(Lcom/google/android/gms/internal/measurement/ˆˑ;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ˊﹳ;->ᴵᵔ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzd:Lcom/google/android/gms/internal/measurement/ʻˈ;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ﹳᐧ(I)Lcom/google/android/gms/internal/measurement/ˆˑ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˊﹳ;->zzd:Lcom/google/android/gms/internal/measurement/ʻˈ;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ˆˑ;

    return-object p1
.end method
