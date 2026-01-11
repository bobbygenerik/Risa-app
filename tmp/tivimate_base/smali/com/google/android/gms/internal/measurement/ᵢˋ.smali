.class public final Lcom/google/android/gms/internal/measurement/ᵢˋ;
.super Lcom/google/android/gms/internal/measurement/ʼﹶ;
.source "SourceFile"


# static fields
.field private static final zzd:Lcom/google/android/gms/internal/measurement/ᵢˋ;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/measurement/ʻˈ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ᵢˋ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ᵢˋ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ᵢˋ;->zzd:Lcom/google/android/gms/internal/measurement/ᵢˋ;

    const-class v1, Lcom/google/android/gms/internal/measurement/ᵢˋ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉʿ(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˏʽ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˏʽ;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ᵢˋ;->zzb:Lcom/google/android/gms/internal/measurement/ʻˈ;

    return-void
.end method

.method public static ᵔﹳ()Lcom/google/android/gms/internal/measurement/ˑˆ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵢˋ;->zzd:Lcom/google/android/gms/internal/measurement/ᵢˋ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ᵔᵢ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˑˆ;

    return-object v0
.end method

.method public static ﹳᐧ()Lcom/google/android/gms/internal/measurement/ᵢˋ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵢˋ;->zzd:Lcom/google/android/gms/internal/measurement/ᵢˋ;

    return-object v0
.end method


# virtual methods
.method public final ʼᐧ()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᵢˋ;->zzb:Lcom/google/android/gms/internal/measurement/ʻˈ;

    return-object v0
.end method

.method public final ˉˆ(I)Ljava/lang/Object;
    .locals 3

    .prologue
    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/measurement/ᵢˋ;->zzd:Lcom/google/android/gms/internal/measurement/ᵢˋ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/ˑˆ;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵢˋ;->zzd:Lcom/google/android/gms/internal/measurement/ᵢˋ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;-><init>(Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/ᵢˋ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/ᵢˋ;-><init>()V

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "zzb"

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-class v1, Lcom/google/android/gms/internal/measurement/ﹳᵢ;

    aput-object v1, p1, v0

    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵢˋ;->zzd:Lcom/google/android/gms/internal/measurement/ᵢˋ;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ᐧʾ;

    const-string v2, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/ᐧʾ;-><init>(Lcom/google/android/gms/internal/measurement/ﾞי;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final יـ(Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᵢˋ;->zzb:Lcom/google/android/gms/internal/measurement/ʻˈ;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/ʼᵎ;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/ʼᵎ;->ʾˋ:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/ʻˈ;->ﹳᐧ(I)Lcom/google/android/gms/internal/measurement/ʻˈ;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ᵢˋ;->zzb:Lcom/google/android/gms/internal/measurement/ʻˈ;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᵢˋ;->zzb:Lcom/google/android/gms/internal/measurement/ʻˈ;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/ﾞי;->ʽ(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method
