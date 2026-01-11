.class public final Lcom/google/android/gms/internal/measurement/יﹳ;
.super Lcom/google/android/gms/internal/measurement/ʼﹶ;
.source "SourceFile"


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/measurement/יﹳ;


# instance fields
.field private zzb:I

.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Z

.field private zzg:Lcom/google/android/gms/internal/measurement/ʻˈ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/יﹳ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/יﹳ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/יﹳ;->zzh:Lcom/google/android/gms/internal/measurement/יﹳ;

    const-class v1, Lcom/google/android/gms/internal/measurement/יﹳ;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ˉʿ(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ʼﹶ;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/יﹳ;->zze:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/measurement/ˏʽ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˏʽ;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/יﹳ;->zzg:Lcom/google/android/gms/internal/measurement/ʻˈ;

    return-void
.end method

.method public static ـˆ()Lcom/google/android/gms/internal/measurement/יﹳ;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/יﹳ;->zzh:Lcom/google/android/gms/internal/measurement/יﹳ;

    return-object v0
.end method


# virtual methods
.method public final ʻٴ()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/יﹳ;->zzg:Lcom/google/android/gms/internal/measurement/ʻˈ;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final ʼᐧ()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/יﹳ;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ʽﹳ()Lcom/google/android/gms/internal/measurement/ʻˈ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/יﹳ;->zzg:Lcom/google/android/gms/internal/measurement/ʻˈ;

    return-object v0
.end method

.method public final ʾᵎ()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/יﹳ;->zzd:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_6
    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    return v1

    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    sget-object p1, Lcom/google/android/gms/internal/measurement/יﹳ;->zzh:Lcom/google/android/gms/internal/measurement/יﹳ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/י;

    sget-object v0, Lcom/google/android/gms/internal/measurement/יﹳ;->zzh:Lcom/google/android/gms/internal/measurement/יﹳ;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;-><init>(Lcom/google/android/gms/internal/measurement/ʼﹶ;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/יﹳ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/יﹳ;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const-string v5, "zzb"

    const/4 v6, 0x0

    aput-object v5, p1, v6

    const-string v5, "zzd"

    aput-object v5, p1, v0

    sget-object v0, Lcom/google/android/gms/internal/measurement/ʾˊ;->ʽ:Lcom/google/android/gms/internal/measurement/ʾˊ;

    aput-object v0, p1, v4

    const-string v0, "zze"

    aput-object v0, p1, v3

    const-string v0, "zzf"

    aput-object v0, p1, v2

    const-string v0, "zzg"

    aput-object v0, p1, v1

    sget-object v0, Lcom/google/android/gms/internal/measurement/יﹳ;->zzh:Lcom/google/android/gms/internal/measurement/יﹳ;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ᐧʾ;

    const-string v2, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u180c\u0000\u0002\u1008\u0001\u0003\u1007\u0002\u0004\u001a"

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/ᐧʾ;-><init>(Lcom/google/android/gms/internal/measurement/ﾞי;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final ˏי()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/יﹳ;->zzf:Z

    return v0
.end method

.method public final יـ()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/יﹳ;->zzb:I

    and-int/lit8 v0, v0, 0x4

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
    iget v0, p0, Lcom/google/android/gms/internal/measurement/יﹳ;->zzb:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ﹳᐧ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/יﹳ;->zze:Ljava/lang/String;

    return-object v0
.end method
