.class public final Lⁱי/ʼʼ;
.super Lʽⁱ/ᵎﹶ;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/ExoPlayer;


# instance fields
.field public ʻʿ:Z

.field public ʻˋ:Lʼʻ/ᵔٴ;

.field public ʻᴵ:Lᐧˎ/יـ;

.field public ʻᵎ:I

.field public final ʼˈ:Landroid/os/Looper;

.field public ʼـ:Landroid/view/Surface;

.field public final ʽʽ:Lʽⁱ/ٴʼ;

.field public ʽˑ:I

.field public ʽᵔ:Lʽⁱ/ٴʼ;

.field public ʽⁱ:Z

.field public ʾˊ:Lʽⁱ/ﹳᐧ;

.field public ʾﾞ:Landroid/view/TextureView;

.field public final ʿ:Lⁱי/ʻٴ;

.field public ʿـ:Z

.field public final ʿᵢ:Lⁱי/ـˆ;

.field public final ˆﾞ:Lᐧˎ/ˉʿ;

.field public final ˈʿ:Lʽⁱ/ˋᵔ;

.field public ˈˏ:I

.field public final ˈٴ:Lᐧˎ/ˑﹳ;

.field public final ˈⁱ:J

.field public final ˉـ:Lᐧˎ/ˏי;

.field public final ˉٴ:[Lⁱי/ˑﹳ;

.field public final ˊʻ:Lⁱי/ʼʼ;

.field public final ˊˋ:Lʻʿ/ˆʾ;

.field public ˊᵔ:Z

.field public ˋˊ:J

.field public final ˋᵔ:Z

.field public ˎᐧ:Landroid/view/SurfaceHolder;

.field public final ˏᵢ:J

.field public ˑ:Ljava/lang/Object;

.field public final ˑʼ:Lⁱי/ˏᵢ;

.field public final ˑٴ:Ljava/util/ArrayList;

.field public י:Lʽⁱ/ﹳᐧ;

.field public יﹳ:Lˊˊ/ٴﹶ;

.field public ـˊ:Lʽⁱ/ˑﹳ;

.field public final ـˏ:Lᵔⁱ/ˈ;

.field public final ـᵎ:Lⁱי/ˉˆ;

.field public ـᵢ:Z

.field public ـﹶ:I

.field public final ٴʼ:Lᐧˎ/ʻٴ;

.field public ٴᴵ:Lʽⁱ/ˏᵢ;

.field public final ٴᵢ:[Lⁱי/ˑﹳ;

.field public final ٴﹳ:Lⁱי/ᴵʼ;

.field public final ᐧˎ:I

.field public final ᐧᴵ:Lʻᴵ/יـ;

.field public ᐧﹶ:Lʽⁱ/ᴵᵔ;

.field public final ᐧﾞ:Lʻᴵ/יـ;

.field public final ᴵʼ:Lʻᴵ/ʼʼ;

.field public final ᴵˊ:Lﹶʽ/ʼʼ;

.field public final ᴵˑ:J

.field public final ᴵᵔ:Landroid/content/Context;

.field public ᵎʻ:Lﹳᵢ/ᵎᵔ;

.field public ᵎʿ:F

.field public final ᵎˊ:Lⁱי/יـ;

.field public final ᵎᵔ:Lcom/bumptech/glide/ʼˎ;

.field public final ᵎⁱ:Lﹶʽ/ـˆ;

.field public final ᵔי:Lⁱי/ᴵᵔ;

.field public final ᵔٴ:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final ⁱˉ:I

.field public final ⁱי:Z

.field public ⁱᴵ:Lʽⁱ/ᴵᵔ;

.field public final ﹳـ:J

.field public ﹳⁱ:Lⁱˉ/ʽ;

.field public ﹳﹳ:Z

.field public final ﹶ:I

.field public ﹶˎ:Lⁱי/ᴵˑ;

.field public ﹶᐧ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.exoplayer"

    invoke-static {v0}, Lʽⁱ/ʽʽ;->ﹳٴ(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lⁱי/ᵔʾ;)V
    .locals 33

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, " [AndroidXMedia3/1.8.0] ["

    const-string v3, "Init "

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lʽⁱ/ᵎﹶ;-><init>(I)V

    new-instance v5, Lᐧˎ/ˑﹳ;

    invoke-direct {v5}, Lᐧˎ/ˑﹳ;-><init>()V

    iput-object v5, v1, Lⁱי/ʼʼ;->ˈٴ:Lᐧˎ/ˑﹳ;

    :try_start_0
    const-string v5, "ExoPlayerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lᐧˎ/ﹳٴ;->ʽﹳ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lⁱי/ᵔʾ;->ﹳٴ:Landroid/content/Context;

    iget-object v3, v0, Lⁱי/ᵔʾ;->ᵔᵢ:Landroid/os/Looper;

    iget-object v5, v0, Lⁱי/ᵔʾ;->ⁱˊ:Lᐧˎ/ˏי;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, v1, Lⁱי/ʼʼ;->ᴵᵔ:Landroid/content/Context;

    new-instance v6, Lʻʿ/ˆʾ;

    invoke-direct {v6, v5}, Lʻʿ/ˆʾ;-><init>(Lᐧˎ/ˏי;)V

    iput-object v6, v1, Lⁱי/ʼʼ;->ˊˋ:Lʻʿ/ˆʾ;

    iget v6, v0, Lⁱי/ᵔʾ;->ʼˎ:I

    iput v6, v1, Lⁱי/ʼʼ;->ﹶ:I

    iget-object v6, v0, Lⁱי/ᵔʾ;->ˆʾ:Lʽⁱ/ˑﹳ;

    iput-object v6, v1, Lⁱי/ʼʼ;->ـˊ:Lʽⁱ/ˑﹳ;

    iget v6, v0, Lⁱי/ᵔʾ;->ٴﹶ:I

    iput v6, v1, Lⁱי/ʼʼ;->ⁱˉ:I

    iget v6, v0, Lⁱי/ᵔʾ;->ﾞʻ:I

    iput v6, v1, Lⁱי/ʼʼ;->ᐧˎ:I

    iput-boolean v4, v1, Lⁱי/ʼʼ;->ʿـ:Z

    iget-wide v6, v0, Lⁱי/ᵔʾ;->ʽﹳ:J

    iput-wide v6, v1, Lⁱי/ʼʼ;->ˏᵢ:J

    new-instance v10, Lⁱי/ʻٴ;

    invoke-direct {v10, v1}, Lⁱי/ʻٴ;-><init>(Lⁱי/ʼʼ;)V

    iput-object v10, v1, Lⁱי/ʼʼ;->ʿ:Lⁱי/ʻٴ;

    new-instance v6, Lⁱי/ـˆ;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v1, Lⁱי/ʼʼ;->ʿᵢ:Lⁱי/ـˆ;

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v6, v0, Lⁱי/ᵔʾ;->ʽ:Lⁱי/ˉʿ;

    iget-object v6, v6, Lⁱי/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    move-object v8, v6

    check-cast v8, Lᵢـ/ᵔᵢ;

    move-object v11, v10

    move-object v12, v10

    move-object v13, v10

    invoke-virtual/range {v8 .. v13}, Lᵢـ/ᵔᵢ;->ﹳٴ(Landroid/os/Handler;Lⁱי/ʻٴ;Lⁱי/ʻٴ;Lⁱי/ʻٴ;Lⁱי/ʻٴ;)[Lⁱי/ˑﹳ;

    move-result-object v6

    iput-object v6, v1, Lⁱי/ʼʼ;->ٴᵢ:[Lⁱי/ˑﹳ;

    array-length v7, v6

    const/4 v8, 0x1

    if-lez v7, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    invoke-static {v7}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    array-length v6, v6

    new-array v6, v6, [Lⁱי/ˑﹳ;

    iput-object v6, v1, Lⁱי/ʼʼ;->ˉٴ:[Lⁱי/ˑﹳ;

    move v6, v4

    :goto_1
    iget-object v7, v1, Lⁱי/ʼʼ;->ˉٴ:[Lⁱי/ˑﹳ;

    array-length v9, v7

    const/4 v10, 0x0

    if-ge v6, v9, :cond_1

    iget-object v9, v1, Lⁱי/ʼʼ;->ٴᵢ:[Lⁱי/ˑﹳ;

    aget-object v9, v9, v6

    iget v9, v9, Lⁱי/ˑﹳ;->ᴵˊ:I

    aput-object v10, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    iget-object v6, v0, Lⁱי/ᵔʾ;->ˑﹳ:Lˆʽ/ٴﹶ;

    invoke-interface {v6}, Lˆʽ/ٴﹶ;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lﹶʽ/ـˆ;

    iput-object v6, v1, Lⁱי/ʼʼ;->ᵎⁱ:Lﹶʽ/ـˆ;

    iget-object v6, v0, Lⁱי/ᵔʾ;->ˈ:Lⁱי/ʽ;

    invoke-virtual {v6}, Lⁱי/ʽ;->get()Ljava/lang/Object;

    iget-object v6, v0, Lⁱי/ᵔʾ;->ᵎﹶ:Lⁱי/ʽ;

    invoke-virtual {v6}, Lⁱי/ʽ;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lᵔⁱ/ˈ;

    iput-object v6, v1, Lⁱי/ʼʼ;->ـˏ:Lᵔⁱ/ˈ;

    iget-boolean v6, v0, Lⁱי/ᵔʾ;->ˉʿ:Z

    iput-boolean v6, v1, Lⁱי/ʼʼ;->ˋᵔ:Z

    iget-object v6, v0, Lⁱי/ᵔʾ;->ᵔʾ:Lⁱי/ᴵʼ;

    iput-object v6, v1, Lⁱי/ʼʼ;->ٴﹳ:Lⁱי/ᴵʼ;

    iget-wide v6, v0, Lⁱי/ᵔʾ;->ʼᐧ:J

    iput-wide v6, v1, Lⁱי/ʼʼ;->ﹳـ:J

    iget-wide v6, v0, Lⁱי/ᵔʾ;->ᵔﹳ:J

    iput-wide v6, v1, Lⁱי/ʼʼ;->ˈⁱ:J

    iget-wide v6, v0, Lⁱי/ᵔʾ;->ﹳᐧ:J

    iput-wide v6, v1, Lⁱי/ʼʼ;->ᴵˑ:J

    iget-object v6, v0, Lⁱי/ᵔʾ;->ˉˆ:Lⁱי/ˏᵢ;

    iput-object v6, v1, Lⁱי/ʼʼ;->ˑʼ:Lⁱי/ˏᵢ;

    iput-object v3, v1, Lⁱי/ʼʼ;->ʼˈ:Landroid/os/Looper;

    iput-object v5, v1, Lⁱי/ʼʼ;->ˉـ:Lᐧˎ/ˏי;

    iput-object v1, v1, Lⁱי/ʼʼ;->ˊʻ:Lⁱי/ʼʼ;

    new-instance v6, Lᐧˎ/ˉʿ;

    new-instance v7, Lᵔﹶ/ˉʿ;

    const/16 v9, 0xc

    invoke-direct {v7, v9, v1}, Lᵔﹶ/ˉʿ;-><init>(ILjava/lang/Object;)V

    invoke-direct {v6, v3, v5, v7}, Lᐧˎ/ˉʿ;-><init>(Landroid/os/Looper;Lᐧˎ/ˏי;Lᐧˎ/ٴﹶ;)V

    iput-object v6, v1, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v3, v1, Lⁱי/ʼʼ;->ᵔٴ:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lⁱי/ʼʼ;->ˑٴ:Ljava/util/ArrayList;

    new-instance v3, Lﹳᵢ/ᵎᵔ;

    invoke-direct {v3}, Lﹳᵢ/ᵎᵔ;-><init>()V

    iput-object v3, v1, Lⁱי/ʼʼ;->ᵎʻ:Lﹳᵢ/ᵎᵔ;

    sget-object v3, Lⁱי/ˉˆ;->ﹳٴ:Lⁱי/ˉˆ;

    iput-object v3, v1, Lⁱי/ʼʼ;->ـᵎ:Lⁱי/ˉˆ;

    new-instance v3, Lﹶʽ/ʼʼ;

    iget-object v5, v1, Lⁱי/ʼʼ;->ٴᵢ:[Lⁱי/ˑﹳ;

    array-length v6, v5

    new-array v6, v6, [Lⁱי/ᐧᴵ;

    array-length v5, v5

    new-array v5, v5, [Lﹶʽ/ˏי;

    sget-object v7, Lʽⁱ/ʿᵢ;->ⁱˊ:Lʽⁱ/ʿᵢ;

    invoke-direct {v3, v6, v5, v7, v10}, Lﹶʽ/ʼʼ;-><init>([Lⁱי/ᐧᴵ;[Lﹶʽ/ˏי;Lʽⁱ/ʿᵢ;Ljava/lang/Object;)V

    iput-object v3, v1, Lⁱי/ʼʼ;->ᴵˊ:Lﹶʽ/ʼʼ;

    new-instance v3, Lʽⁱ/ˋᵔ;

    invoke-direct {v3}, Lʽⁱ/ˋᵔ;-><init>()V

    iput-object v3, v1, Lⁱי/ʼʼ;->ˈʿ:Lʽⁱ/ˋᵔ;

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    const/16 v5, 0x14

    new-array v6, v5, [I

    fill-array-data v6, :array_0

    move v7, v4

    :goto_2
    if-ge v7, v5, :cond_2

    aget v9, v6, v7

    const/4 v11, 0x0

    xor-int/2addr v11, v8

    invoke-static {v11}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    invoke-virtual {v3, v9, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, v1, Lⁱי/ʼʼ;->ᵎⁱ:Lﹶʽ/ـˆ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    xor-int/2addr v5, v8

    invoke-static {v5}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    const/16 v5, 0x1d

    invoke-virtual {v3, v5, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    new-instance v5, Lʽⁱ/ٴʼ;

    const/4 v6, 0x0

    xor-int/2addr v6, v8

    invoke-static {v6}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    new-instance v6, Lʽⁱ/ʼᐧ;

    invoke-direct {v6, v3}, Lʽⁱ/ʼᐧ;-><init>(Landroid/util/SparseBooleanArray;)V

    invoke-direct {v5, v6}, Lʽⁱ/ٴʼ;-><init>(Lʽⁱ/ʼᐧ;)V

    iput-object v5, v1, Lⁱי/ʼʼ;->ʽʽ:Lʽⁱ/ٴʼ;

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    move v5, v4

    :goto_3
    iget-object v7, v6, Lʽⁱ/ʼᐧ;->ﹳٴ:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    invoke-virtual {v6, v5}, Lʽⁱ/ʼᐧ;->ﹳٴ(I)I

    move-result v7

    const/4 v9, 0x0

    xor-int/2addr v9, v8

    invoke-static {v9}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    invoke-virtual {v3, v7, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    xor-int/2addr v5, v8

    invoke-static {v5}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    const/4 v5, 0x4

    invoke-virtual {v3, v5, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    const/4 v6, 0x0

    xor-int/2addr v6, v8

    invoke-static {v6}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    const/16 v6, 0xa

    invoke-virtual {v3, v6, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    new-instance v7, Lʽⁱ/ٴʼ;

    const/4 v9, 0x0

    xor-int/2addr v9, v8

    invoke-static {v9}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    new-instance v9, Lʽⁱ/ʼᐧ;

    invoke-direct {v9, v3}, Lʽⁱ/ʼᐧ;-><init>(Landroid/util/SparseBooleanArray;)V

    invoke-direct {v7, v9}, Lʽⁱ/ٴʼ;-><init>(Lʽⁱ/ʼᐧ;)V

    iput-object v7, v1, Lⁱי/ʼʼ;->ʽᵔ:Lʽⁱ/ٴʼ;

    iget-object v3, v1, Lⁱי/ʼʼ;->ˉـ:Lᐧˎ/ˏי;

    iget-object v7, v1, Lⁱי/ʼʼ;->ʼˈ:Landroid/os/Looper;

    invoke-virtual {v3, v7, v10}, Lᐧˎ/ˏי;->ﹳٴ(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lᐧˎ/ʻٴ;

    move-result-object v3

    iput-object v3, v1, Lⁱי/ʼʼ;->ٴʼ:Lᐧˎ/ʻٴ;

    new-instance v3, Lⁱי/יـ;

    invoke-direct {v3, v1}, Lⁱי/יـ;-><init>(Lⁱי/ʼʼ;)V

    iput-object v3, v1, Lⁱי/ʼʼ;->ᵎˊ:Lⁱי/יـ;

    iget-object v7, v1, Lⁱי/ʼʼ;->ᴵˊ:Lﹶʽ/ʼʼ;

    invoke-static {v7}, Lⁱי/ᴵˑ;->ٴﹶ(Lﹶʽ/ʼʼ;)Lⁱי/ᴵˑ;

    move-result-object v7

    iput-object v7, v1, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v7, v1, Lⁱי/ʼʼ;->ˊˋ:Lʻʿ/ˆʾ;

    iget-object v9, v1, Lⁱי/ʼʼ;->ˊʻ:Lⁱי/ʼʼ;

    iget-object v11, v1, Lⁱי/ʼʼ;->ʼˈ:Landroid/os/Looper;

    invoke-virtual {v7, v9, v11}, Lʻʿ/ˆʾ;->ﹳـ(Lⁱי/ʼʼ;Landroid/os/Looper;)V

    new-instance v7, Lʻʿ/יـ;

    iget-object v9, v0, Lⁱי/ᵔʾ;->ʾᵎ:Ljava/lang/String;

    invoke-direct {v7, v9}, Lʻʿ/יـ;-><init>(Ljava/lang/String;)V

    new-instance v11, Lⁱי/ᴵᵔ;

    iget-object v12, v1, Lⁱי/ʼʼ;->ᴵᵔ:Landroid/content/Context;

    iget-object v13, v1, Lⁱי/ʼʼ;->ٴᵢ:[Lⁱי/ˑﹳ;

    iget-object v14, v1, Lⁱי/ʼʼ;->ˉٴ:[Lⁱי/ˑﹳ;

    iget-object v15, v1, Lⁱי/ʼʼ;->ᵎⁱ:Lﹶʽ/ـˆ;

    iget-object v9, v1, Lⁱי/ʼʼ;->ᴵˊ:Lﹶʽ/ʼʼ;

    iget-object v5, v0, Lⁱי/ᵔʾ;->ﾞᴵ:Lˆʽ/ٴﹶ;

    invoke-interface {v5}, Lˆʽ/ٴﹶ;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Lⁱי/ˆʾ;

    iget-object v5, v1, Lⁱי/ʼʼ;->ـˏ:Lᵔⁱ/ˈ;

    iget v6, v1, Lⁱי/ʼʼ;->ʻᵎ:I

    iget-boolean v10, v1, Lⁱי/ʼʼ;->ˊᵔ:Z

    iget-object v8, v1, Lⁱי/ʼʼ;->ˊˋ:Lʻʿ/ˆʾ;

    iget-object v4, v1, Lⁱי/ʼʼ;->ٴﹳ:Lⁱי/ᴵʼ;

    move-object/from16 v28, v3

    iget-object v3, v0, Lⁱי/ᵔʾ;->יـ:Lⁱי/ᵔᵢ;

    move-object/from16 v23, v3

    move-object/from16 v22, v4

    iget-wide v3, v0, Lⁱי/ᵔʾ;->ˏי:J

    move-wide/from16 v24, v3

    iget-object v3, v1, Lⁱי/ʼʼ;->ʼˈ:Landroid/os/Looper;

    iget-object v4, v1, Lⁱי/ʼʼ;->ˉـ:Lᐧˎ/ˏי;

    move-object/from16 v26, v3

    iget-object v3, v1, Lⁱי/ʼʼ;->ـᵎ:Lⁱי/ˉˆ;

    move-object/from16 v30, v3

    iget-object v3, v1, Lⁱי/ʼʼ;->ʿᵢ:Lⁱי/ـˆ;

    move-object/from16 v31, v3

    move-object/from16 v27, v4

    move-object/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v29, v7

    move-object/from16 v21, v8

    move-object/from16 v16, v9

    move/from16 v20, v10

    invoke-direct/range {v11 .. v31}, Lⁱי/ᴵᵔ;-><init>(Landroid/content/Context;[Lⁱי/ˑﹳ;[Lⁱי/ˑﹳ;Lﹶʽ/ـˆ;Lﹶʽ/ʼʼ;Lⁱי/ˆʾ;Lᵔⁱ/ˈ;IZLʻʿ/ˆʾ;Lⁱי/ᴵʼ;Lⁱי/ᵔᵢ;JLandroid/os/Looper;Lᐧˎ/ˏי;Lⁱי/יـ;Lʻʿ/יـ;Lⁱי/ˉˆ;Lﾞˏ/ʽﹳ;)V

    move-object/from16 v3, v29

    iget-object v4, v11, Lⁱי/ᴵᵔ;->ˉٴ:Lᐧˎ/ʻٴ;

    iput-object v11, v1, Lⁱי/ʼʼ;->ᵔי:Lⁱי/ᴵᵔ;

    iget-object v7, v11, Lⁱי/ᴵᵔ;->ٴʼ:Landroid/os/Looper;

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v1, Lⁱי/ʼʼ;->ᵎʿ:F

    const/4 v5, 0x0

    iput v5, v1, Lⁱי/ʼʼ;->ʻᵎ:I

    sget-object v5, Lʽⁱ/ᴵᵔ;->ᴵˊ:Lʽⁱ/ᴵᵔ;

    iput-object v5, v1, Lⁱי/ʼʼ;->ᐧﹶ:Lʽⁱ/ᴵᵔ;

    iput-object v5, v1, Lⁱי/ʼʼ;->ⁱᴵ:Lʽⁱ/ᴵᵔ;

    const/4 v12, -0x1

    iput v12, v1, Lⁱי/ʼʼ;->ʽˑ:I

    sget-object v5, Lⁱˉ/ʽ;->ʽ:Lⁱˉ/ʽ;

    iput-object v5, v1, Lⁱי/ʼʼ;->ﹳⁱ:Lⁱˉ/ʽ;

    const/4 v5, 0x1

    iput-boolean v5, v1, Lⁱי/ʼʼ;->ⁱי:Z

    iget-object v5, v1, Lⁱי/ʼʼ;->ˊˋ:Lʻʿ/ˆʾ;

    iget-object v6, v1, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v5}, Lᐧˎ/ˉʿ;->ﹳٴ(Ljava/lang/Object;)V

    iget-object v5, v1, Lⁱי/ʼʼ;->ـˏ:Lᵔⁱ/ˈ;

    new-instance v6, Landroid/os/Handler;

    iget-object v8, v1, Lⁱי/ʼʼ;->ʼˈ:Landroid/os/Looper;

    invoke-direct {v6, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v8, v1, Lⁱי/ʼʼ;->ˊˋ:Lʻʿ/ˆʾ;

    check-cast v5, Lᵔⁱ/ᵎﹶ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Lᵔⁱ/ᵎﹶ;->ʽ:Lˊⁱ/ˑﹳ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Lˊⁱ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lᵔⁱ/ʽ;

    iget-object v13, v10, Lᵔⁱ/ʽ;->ⁱˊ:Lʻʿ/ˆʾ;

    if-ne v13, v8, :cond_4

    const/4 v13, 0x1

    iput-boolean v13, v10, Lᵔⁱ/ʽ;->ʽ:Z

    invoke-virtual {v5, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    new-instance v9, Lᵔⁱ/ʽ;

    invoke-direct {v9, v6, v8}, Lᵔⁱ/ʽ;-><init>(Landroid/os/Handler;Lʻʿ/ˆʾ;)V

    invoke-virtual {v5, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lⁱי/ʼʼ;->ʿ:Lⁱי/ʻٴ;

    iget-object v6, v1, Lⁱי/ʼʼ;->ᵔٴ:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1f

    if-lt v5, v13, :cond_6

    iget-object v5, v1, Lⁱי/ʼʼ;->ᴵᵔ:Landroid/content/Context;

    iget-boolean v6, v0, Lⁱי/ᵔʾ;->ʻٴ:Z

    iget-object v8, v1, Lⁱי/ʼʼ;->ˉـ:Lᐧˎ/ˏי;

    iget-object v9, v11, Lⁱי/ᴵᵔ;->ٴʼ:Landroid/os/Looper;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lᐧˎ/ˏי;->ﹳٴ(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lᐧˎ/ʻٴ;

    move-result-object v8

    new-instance v9, Lⁱי/ʽﹳ;

    invoke-direct {v9, v5, v6, v1, v3}, Lⁱי/ʽﹳ;-><init>(Landroid/content/Context;ZLⁱי/ʼʼ;Lʻʿ/יـ;)V

    invoke-virtual {v8, v9}, Lᐧˎ/ʻٴ;->ʽ(Ljava/lang/Runnable;)Z

    :cond_6
    new-instance v5, Lʻᴵ/ʼʼ;

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v8, v1, Lⁱי/ʼʼ;->ʼˈ:Landroid/os/Looper;

    iget-object v9, v1, Lⁱי/ʼʼ;->ˉـ:Lᐧˎ/ˏי;

    new-instance v10, Lⁱי/יـ;

    invoke-direct {v10, v1}, Lⁱי/יـ;-><init>(Lⁱי/ʼʼ;)V

    invoke-direct/range {v5 .. v10}, Lʻᴵ/ʼʼ;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Lᐧˎ/ˏי;Lⁱי/יـ;)V

    iput-object v5, v1, Lⁱי/ʼʼ;->ᴵʼ:Lʻᴵ/ʼʼ;

    new-instance v3, Lٴˉ/ⁱˊ;

    const/16 v6, 0xa

    invoke-direct {v3, v6, v1}, Lٴˉ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v3}, Lʻᴵ/ʼʼ;->ˏי(Ljava/lang/Runnable;)V

    new-instance v3, Lcom/bumptech/glide/ʼˎ;

    iget-object v5, v0, Lⁱי/ᵔʾ;->ﹳٴ:Landroid/content/Context;

    iget-object v0, v0, Lⁱי/ᵔʾ;->ᵔᵢ:Landroid/os/Looper;

    iget-object v6, v1, Lⁱי/ʼʼ;->ʿ:Lⁱי/ʻٴ;

    iget-object v8, v1, Lⁱי/ʼʼ;->ˉـ:Lᐧˎ/ˏי;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, v3, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v8, v7, v10}, Lᐧˎ/ˏי;->ﹳٴ(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lᐧˎ/ʻٴ;

    move-result-object v5

    iput-object v5, v3, Lcom/bumptech/glide/ʼˎ;->ˈٴ:Ljava/lang/Object;

    new-instance v5, Lⁱי/ﹳٴ;

    invoke-virtual {v8, v0, v10}, Lᐧˎ/ˏי;->ﹳٴ(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lᐧˎ/ʻٴ;

    move-result-object v0

    invoke-direct {v5, v3, v0, v6}, Lⁱי/ﹳٴ;-><init>(Lcom/bumptech/glide/ʼˎ;Lᐧˎ/ʻٴ;Lⁱי/ʻٴ;)V

    iput-object v5, v3, Lcom/bumptech/glide/ʼˎ;->ʽʽ:Ljava/lang/Object;

    iput-object v3, v1, Lⁱי/ʼʼ;->ᵎᵔ:Lcom/bumptech/glide/ʼˎ;

    invoke-virtual {v3}, Lcom/bumptech/glide/ʼˎ;->ٴﹶ()V

    new-instance v0, Lʻᴵ/יـ;

    iget-object v3, v1, Lⁱי/ʼʼ;->ˉـ:Lᐧˎ/ˏי;

    const/4 v5, 0x3

    invoke-direct {v0, v2, v7, v3, v5}, Lʻᴵ/יـ;-><init>(Landroid/content/Context;Landroid/os/Looper;Lᐧˎ/ˏי;I)V

    iput-object v0, v1, Lⁱי/ʼʼ;->ᐧﾞ:Lʻᴵ/יـ;

    new-instance v0, Lʻᴵ/יـ;

    iget-object v3, v1, Lⁱי/ʼʼ;->ˉـ:Lᐧˎ/ˏי;

    const/4 v6, 0x4

    invoke-direct {v0, v2, v7, v3, v6}, Lʻᴵ/יـ;-><init>(Landroid/content/Context;Landroid/os/Looper;Lᐧˎ/ˏי;I)V

    iput-object v0, v1, Lⁱי/ʼʼ;->ᐧᴵ:Lʻᴵ/יـ;

    sget v0, Lʽⁱ/ٴﹶ;->ʽ:I

    sget-object v0, Lʽⁱ/ˏᵢ;->ˈ:Lʽⁱ/ˏᵢ;

    iput-object v0, v1, Lⁱי/ʼʼ;->ٴᴵ:Lʽⁱ/ˏᵢ;

    sget-object v0, Lᐧˎ/יـ;->ʽ:Lᐧˎ/יـ;

    iput-object v0, v1, Lⁱי/ʼʼ;->ʻᴵ:Lᐧˎ/יـ;

    iget-object v0, v1, Lⁱי/ʼʼ;->ˑʼ:Lⁱי/ˏᵢ;

    const/16 v2, 0x26

    invoke-virtual {v4, v2, v0}, Lᐧˎ/ʻٴ;->ﹳٴ(ILjava/lang/Object;)Lᐧˎ/ʽﹳ;

    move-result-object v0

    invoke-virtual {v0}, Lᐧˎ/ʽﹳ;->ⁱˊ()V

    iget-object v0, v1, Lⁱי/ʼʼ;->ـˊ:Lʽⁱ/ˑﹳ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lᐧˎ/ʻٴ;->ⁱˊ()Lᐧˎ/ʽﹳ;

    move-result-object v2

    iget-object v3, v4, Lᐧˎ/ʻٴ;->ﹳٴ:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v13, v4, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, v2, Lᐧˎ/ʽﹳ;->ﹳٴ:Landroid/os/Message;

    invoke-virtual {v2}, Lᐧˎ/ʽﹳ;->ⁱˊ()V

    iget-object v0, v1, Lⁱי/ʼʼ;->ـˊ:Lʽⁱ/ˑﹳ;

    const/4 v13, 0x1

    invoke-virtual {v1, v13, v5, v0}, Lⁱי/ʼʼ;->ˆﹳ(IILjava/lang/Object;)V

    iget v0, v1, Lⁱי/ʼʼ;->ⁱˉ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v6, 0x4

    invoke-virtual {v1, v2, v6, v0}, Lⁱי/ʼʼ;->ˆﹳ(IILjava/lang/Object;)V

    iget v0, v1, Lⁱי/ʼʼ;->ᐧˎ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v0}, Lⁱי/ʼʼ;->ˆﹳ(IILjava/lang/Object;)V

    iget-boolean v0, v1, Lⁱי/ʼʼ;->ʿـ:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x9

    const/4 v13, 0x1

    invoke-virtual {v1, v13, v2, v0}, Lⁱי/ʼʼ;->ˆﹳ(IILjava/lang/Object;)V

    iget-object v0, v1, Lⁱי/ʼʼ;->ʿᵢ:Lⁱי/ـˆ;

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3, v0}, Lⁱי/ʼʼ;->ˆﹳ(IILjava/lang/Object;)V

    iget v0, v1, Lⁱי/ʼʼ;->ﹶ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v1, v12, v2, v0}, Lⁱי/ʼʼ;->ˆﹳ(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lⁱי/ʼʼ;->ˈٴ:Lᐧˎ/ˑﹳ;

    invoke-virtual {v0}, Lᐧˎ/ˑﹳ;->ˑﹳ()Z

    return-void

    :goto_5
    iget-object v2, v1, Lⁱי/ʼʼ;->ˈٴ:Lᐧˎ/ˑﹳ;

    invoke-virtual {v2}, Lᐧˎ/ˑﹳ;->ˑﹳ()Z

    throw v0

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x1e
        0x15
        0x23
        0x16
        0x18
        0x1b
        0x1c
        0x20
    .end array-data
.end method

.method public static ˊˊ(Lⁱי/ᴵˑ;)J
    .locals 6

    .prologue
    new-instance v0, Lʽⁱ/ˊˋ;

    invoke-direct {v0}, Lʽⁱ/ˊˋ;-><init>()V

    new-instance v1, Lʽⁱ/ˋᵔ;

    invoke-direct {v1}, Lʽⁱ/ˋᵔ;-><init>()V

    iget-object v2, p0, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    iget-object v3, p0, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget-object v3, v3, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    iget-wide v2, p0, Lⁱי/ᴵˑ;->ʽ:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    iget-object p0, p0, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    iget v1, v1, Lʽⁱ/ˋᵔ;->ʽ:I

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lʽⁱ/ʼˈ;->ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;

    move-result-object p0

    iget-wide v0, p0, Lʽⁱ/ˊˋ;->ﾞʻ:J

    return-wide v0

    :cond_0
    iget-wide v0, v1, Lʽⁱ/ˋᵔ;->ˑﹳ:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static ˏⁱ(Lⁱי/ᴵˑ;I)Lⁱי/ᴵˑ;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lⁱי/ᴵˑ;->ᵔᵢ(I)Lⁱי/ᴵˑ;

    move-result-object p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lⁱי/ᴵˑ;->ⁱˊ(Z)Lⁱי/ᴵˑ;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final isScrubbingModeEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-boolean v0, p0, Lⁱי/ʼʼ;->ﹳﹳ:Z

    return v0
.end method

.method public final setImageOutput(Landroidx/media3/exoplayer/image/ImageOutput;)V
    .locals 2

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    const/4 v0, 0x4

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1, p1}, Lⁱי/ʼʼ;->ˆﹳ(IILjava/lang/Object;)V

    return-void
.end method

.method public final setScrubbingModeEnabled(Z)V
    .locals 6

    .prologue
    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-boolean v0, p0, Lⁱי/ʼʼ;->ﹳﹳ:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lⁱי/ʼʼ;->ﹳﹳ:Z

    iget-object v0, p0, Lⁱי/ʼʼ;->ˑʼ:Lⁱי/ˏᵢ;

    iget-object v1, v0, Lⁱי/ˏᵢ;->ﹳٴ:Lʼʻ/ᵔٴ;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lⁱי/ʼʼ;->ᵎⁱ:Lﹶʽ/ـˆ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v1

    check-cast v2, Lﹶʽ/ﹳᐧ;

    invoke-virtual {v2}, Lﹶʽ/ﹳᐧ;->ˑﹳ()Lﹶʽ/ˆʾ;

    move-result-object v2

    if-eqz p1, :cond_2

    iget-object v3, v2, Lʽⁱ/ˉـ;->ʽﹳ:Lʼʻ/ᵔٴ;

    iput-object v3, p0, Lⁱי/ʼʼ;->ʻˋ:Lʼʻ/ᵔٴ;

    iget-object v0, v0, Lⁱי/ˏᵢ;->ﹳٴ:Lʼʻ/ᵔٴ;

    invoke-virtual {v2}, Lﹶʽ/ˆʾ;->ﹳٴ()Lʽⁱ/ᴵˑ;

    move-result-object v3

    invoke-virtual {v0}, Lʼʻ/ˈٴ;->ᵔᵢ()Lʼʻ/ٴﹳ;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lʽⁱ/ᴵˑ;->ʼˎ(IZ)Lʽⁱ/ᴵˑ;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lʽⁱ/ᴵˑ;->ﹳٴ()Lʽⁱ/ˉـ;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lﹶʽ/ʼˎ;

    invoke-direct {v0, v2}, Lﹶʽ/ʼˎ;-><init>(Lﹶʽ/ˆʾ;)V

    iget-object v3, p0, Lⁱי/ʼʼ;->ʻˋ:Lʼʻ/ᵔٴ;

    invoke-virtual {v0, v3}, Lﹶʽ/ʼˎ;->ٴﹶ(Ljava/util/Set;)V

    new-instance v3, Lﹶʽ/ˆʾ;

    invoke-direct {v3, v0}, Lﹶʽ/ˆʾ;-><init>(Lﹶʽ/ʼˎ;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lⁱי/ʼʼ;->ʻˋ:Lʼʻ/ᵔٴ;

    move-object v0, v3

    :goto_1
    invoke-virtual {v0, v2}, Lʽⁱ/ˉـ;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, v0}, Lﹶʽ/ـˆ;->ⁱˊ(Lʽⁱ/ˉـ;)V

    :cond_3
    iget-object v0, p0, Lⁱי/ʼʼ;->ᵔי:Lⁱי/ᴵᵔ;

    iget-object v0, v0, Lⁱי/ᴵᵔ;->ˉٴ:Lᐧˎ/ʻٴ;

    const/16 v1, 0x24

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lᐧˎ/ʻٴ;->ﹳٴ(ILjava/lang/Object;)Lᐧˎ/ʽﹳ;

    move-result-object p1

    invoke-virtual {p1}, Lᐧˎ/ʽﹳ;->ⁱˊ()V

    iget-object p1, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-boolean v0, p1, Lⁱי/ᴵˑ;->ﾞʻ:Z

    iget p1, p1, Lⁱי/ᴵˑ;->ˉʿ:I

    invoke-virtual {p0, p1, v0}, Lⁱי/ʼʼ;->ˑﹶ(IZ)V

    return-void
.end method

.method public final ʻʼ(Z)V
    .locals 1

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lⁱי/ʼʼ;->ˑﹶ(IZ)V

    return-void
.end method

.method public final ʻˆ()V
    .locals 6

    .prologue
    invoke-virtual {p0}, Lⁱי/ʼʼ;->ﾞˏ()I

    move-result v0

    iget-object v1, p0, Lⁱי/ʼʼ;->ᐧᴵ:Lʻᴵ/יـ;

    iget-object v2, p0, Lⁱי/ʼʼ;->ᐧﾞ:Lʻᴵ/יـ;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v0, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-boolean v0, v0, Lⁱי/ᴵˑ;->ʼᐧ:Z

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ٴʿ()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v0, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v2, v3}, Lʻᴵ/יـ;->ˈ(Z)V

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ٴʿ()Z

    move-result v0

    invoke-virtual {v1, v0}, Lʻᴵ/יـ;->ˈ(Z)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {v2, v3}, Lʻᴵ/יـ;->ˈ(Z)V

    invoke-virtual {v1, v3}, Lʻᴵ/יـ;->ˈ(Z)V

    return-void
.end method

.method public final ʼᵢ()J
    .locals 5

    .prologue
    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v0, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v0, v0, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    invoke-virtual {v0}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lⁱי/ʼʼ;->ˋˊ:J

    return-wide v0

    :cond_0
    iget-object v0, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v1, v0, Lⁱי/ᴵˑ;->ٴﹶ:Lﹳᵢ/ᵢˏ;

    iget-wide v1, v1, Lﹳᵢ/ᵢˏ;->ˈ:J

    iget-object v3, v0, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget-wide v3, v3, Lﹳᵢ/ᵢˏ;->ˈ:J

    cmp-long v1, v1, v3

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v0, v0, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˎʾ()I

    move-result v1

    iget-object v4, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lʽⁱ/ˊˋ;

    invoke-virtual {v0, v1, v4, v2, v3}, Lʽⁱ/ʼˈ;->ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;

    move-result-object v0

    iget-wide v0, v0, Lʽⁱ/ˊˋ;->ˉʿ:J

    invoke-static {v0, v1}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-wide v0, v0, Lⁱי/ᴵˑ;->ᵔﹳ:J

    iget-object v4, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v4, v4, Lⁱי/ᴵˑ;->ٴﹶ:Lﹳᵢ/ᵢˏ;

    invoke-virtual {v4}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v1, v0, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    iget-object v0, v0, Lⁱי/ᴵˑ;->ٴﹶ:Lﹳᵢ/ᵢˏ;

    iget-object v0, v0, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object v4, p0, Lⁱי/ʼʼ;->ˈʿ:Lʽⁱ/ˋᵔ;

    invoke-virtual {v1, v0, v4}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    move-result-object v0

    iget-object v1, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v1, v1, Lⁱי/ᴵˑ;->ٴﹶ:Lﹳᵢ/ᵢˏ;

    iget v1, v1, Lﹳᵢ/ᵢˏ;->ⁱˊ:I

    invoke-virtual {v0, v1}, Lʽⁱ/ˋᵔ;->ˈ(I)J

    goto :goto_0

    :cond_2
    move-wide v2, v0

    :goto_0
    iget-object v0, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v1, v0, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    iget-object v0, v0, Lⁱי/ᴵˑ;->ٴﹶ:Lﹳᵢ/ᵢˏ;

    iget-object v0, v0, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object v4, p0, Lⁱי/ʼʼ;->ˈʿ:Lʽⁱ/ˋᵔ;

    invoke-virtual {v1, v0, v4}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    iget-wide v0, v4, Lʽⁱ/ˋᵔ;->ˑﹳ:J

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final ʽʾ(Lʽⁱ/ʼˈ;IJ)Landroid/util/Pair;
    .locals 6

    .prologue
    invoke-virtual {p1}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iput p2, p0, Lⁱי/ʼʼ;->ʽˑ:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    move-wide p3, v1

    :cond_0
    iput-wide p3, p0, Lⁱי/ʼʼ;->ˋˊ:J

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    invoke-virtual {p1}, Lʽⁱ/ʼˈ;->ˉˆ()I

    move-result v0

    if-lt p2, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, p2

    goto :goto_2

    :cond_3
    :goto_1
    iget-boolean p2, p0, Lⁱי/ʼʼ;->ˊᵔ:Z

    invoke-virtual {p1, p2}, Lʽⁱ/ʼˈ;->ﹳٴ(Z)I

    move-result p2

    iget-object p3, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p3, Lʽⁱ/ˊˋ;

    invoke-virtual {p1, p2, p3, v1, v2}, Lʽⁱ/ʼˈ;->ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;

    move-result-object p3

    iget-wide p3, p3, Lʽⁱ/ˊˋ;->ﾞʻ:J

    invoke-static {p3, p4}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide p3

    goto :goto_0

    :goto_2
    iget-object p2, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Lʽⁱ/ˊˋ;

    iget-object v2, p0, Lⁱי/ʼʼ;->ˈʿ:Lʽⁱ/ˋᵔ;

    invoke-static {p3, p4}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lʽⁱ/ʼˈ;->ʼˎ(Lʽⁱ/ˊˋ;Lʽⁱ/ˋᵔ;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final ʽˑ()V
    .locals 1

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ʿʽ()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lⁱי/ʼʼ;->ˆʻ(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lⁱי/ʼʼ;->ˆˑ(II)V

    return-void
.end method

.method public final ʿʽ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lⁱי/ʼʼ;->יﹳ:Lˊˊ/ٴﹶ;

    iget-object v1, p0, Lⁱי/ʼʼ;->ʿ:Lⁱי/ʻٴ;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lⁱי/ʼʼ;->ʿᵢ:Lⁱי/ـˆ;

    invoke-virtual {p0, v0}, Lⁱי/ʼʼ;->ˋˊ(Lⁱי/ʿ;)Lⁱי/ʿᵢ;

    move-result-object v0

    iget-boolean v3, v0, Lⁱי/ʿᵢ;->ﾞᴵ:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    const/16 v3, 0x2710

    iput v3, v0, Lⁱי/ʿᵢ;->ʽ:I

    iget-boolean v3, v0, Lⁱי/ʿᵢ;->ﾞᴵ:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-object v2, v0, Lⁱי/ʿᵢ;->ˈ:Ljava/lang/Object;

    invoke-virtual {v0}, Lⁱי/ʿᵢ;->ⁱˊ()V

    iget-object v0, p0, Lⁱי/ʼʼ;->יﹳ:Lˊˊ/ٴﹶ;

    iget-object v0, v0, Lˊˊ/ٴﹶ;->ʾˋ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v2, p0, Lⁱי/ʼʼ;->יﹳ:Lˊˊ/ٴﹶ;

    :cond_0
    iget-object v0, p0, Lⁱי/ʼʼ;->ʾﾞ:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eq v0, v1, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v3, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v3}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lⁱי/ʼʼ;->ʾﾞ:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_0
    iput-object v2, p0, Lⁱי/ʼʼ;->ʾﾞ:Landroid/view/TextureView;

    :cond_2
    iget-object v0, p0, Lⁱי/ʼʼ;->ˎᐧ:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v2, p0, Lⁱי/ʼʼ;->ˎᐧ:Landroid/view/SurfaceHolder;

    :cond_3
    return-void
.end method

.method public final ˆʻ(Ljava/lang/Object;)V
    .locals 10

    .prologue
    iget-object v0, p0, Lⁱי/ʼʼ;->ˑ:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lⁱי/ʼʼ;->ˏᵢ:J

    goto :goto_1

    :cond_1
    move-wide v4, v2

    :goto_1
    iget-object v6, p0, Lⁱי/ʼʼ;->ᵔי:Lⁱי/ᴵᵔ;

    iget-boolean v7, v6, Lⁱי/ᴵᵔ;->ـﹶ:Z

    if-nez v7, :cond_3

    iget-object v7, v6, Lⁱי/ᴵᵔ;->ٴʼ:Landroid/os/Looper;

    invoke-virtual {v7}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    new-instance v7, Lᐧˎ/ˑﹳ;

    iget-object v8, v6, Lⁱי/ᴵᵔ;->ˑٴ:Lᐧˎ/ˏי;

    invoke-direct {v7, v8}, Lᐧˎ/ˑﹳ;-><init>(Lᐧˎ/ˏי;)V

    iget-object v6, v6, Lⁱי/ᴵᵔ;->ˉٴ:Lᐧˎ/ʻٴ;

    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, p1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v9, 0x1e

    invoke-virtual {v6, v9, v8}, Lᐧˎ/ʻٴ;->ﹳٴ(ILjava/lang/Object;)Lᐧˎ/ʽﹳ;

    move-result-object v6

    invoke-virtual {v6}, Lᐧˎ/ʽﹳ;->ⁱˊ()V

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    invoke-virtual {v7, v4, v5}, Lᐧˎ/ˑﹳ;->ʽ(J)Z

    move-result v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lⁱי/ʼʼ;->ˑ:Ljava/lang/Object;

    iget-object v2, p0, Lⁱי/ʼʼ;->ʼـ:Landroid/view/Surface;

    if-ne v0, v2, :cond_4

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lⁱי/ʼʼ;->ʼـ:Landroid/view/Surface;

    :cond_4
    iput-object p1, p0, Lⁱי/ʼʼ;->ˑ:Ljava/lang/Object;

    if-nez v1, :cond_5

    new-instance p1, Landroidx/media3/exoplayer/ExoTimeoutException;

    const-string v0, "Detaching surface timed out."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v1, 0x2

    const/16 v2, 0x3eb

    invoke-direct {v0, v1, p1, v2}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Exception;I)V

    invoke-virtual {p0, v0}, Lⁱי/ʼʼ;->יʿ(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    :cond_5
    return-void
.end method

.method public final ˆˎ(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lⁱי/ʼʼ;->ʽⁱ:Z

    iput-object p1, p0, Lⁱי/ʼʼ;->ˎᐧ:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lⁱי/ʼʼ;->ʿ:Lⁱי/ʻٴ;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p1, p0, Lⁱי/ʼʼ;->ˎᐧ:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lⁱי/ʼʼ;->ˎᐧ:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lⁱי/ʼʼ;->ˆˑ(II)V

    return-void

    :cond_0
    invoke-virtual {p0, v0, v0}, Lⁱי/ʼʼ;->ˆˑ(II)V

    return-void
.end method

.method public final ˆˑ(II)V
    .locals 3

    .prologue
    iget-object v0, p0, Lⁱי/ʼʼ;->ʻᴵ:Lᐧˎ/יـ;

    iget v1, v0, Lᐧˎ/יـ;->ﹳٴ:I

    if-ne p1, v1, :cond_1

    iget v0, v0, Lᐧˎ/יـ;->ⁱˊ:I

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Lᐧˎ/יـ;

    invoke-direct {v0, p1, p2}, Lᐧˎ/יـ;-><init>(II)V

    iput-object v0, p0, Lⁱי/ʼʼ;->ʻᴵ:Lᐧˎ/יـ;

    new-instance v0, Lⁱי/ﹳᐧ;

    invoke-direct {v0, p1, p2}, Lⁱי/ﹳᐧ;-><init>(II)V

    iget-object v1, p0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, v0}, Lᐧˎ/ˉʿ;->ᵎﹶ(ILᐧˎ/ˆʾ;)V

    new-instance v0, Lᐧˎ/יـ;

    invoke-direct {v0, p1, p2}, Lᐧˎ/יـ;-><init>(II)V

    const/4 p1, 0x2

    const/16 p2, 0xe

    invoke-virtual {p0, p1, p2, v0}, Lⁱי/ʼʼ;->ˆﹳ(IILjava/lang/Object;)V

    return-void
.end method

.method public final ˆﹳ(IILjava/lang/Object;)V
    .locals 6

    .prologue
    iget-object v0, p0, Lⁱי/ʼʼ;->ٴᵢ:[Lⁱי/ˑﹳ;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    if-eq p1, v4, :cond_0

    iget v4, v5, Lⁱי/ˑﹳ;->ᴵˊ:I

    if-ne v4, p1, :cond_1

    :cond_0
    invoke-virtual {p0, v5}, Lⁱי/ʼʼ;->ˋˊ(Lⁱי/ʿ;)Lⁱי/ʿᵢ;

    move-result-object v4

    iget-boolean v5, v4, Lⁱי/ʿᵢ;->ﾞᴵ:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput p2, v4, Lⁱי/ʿᵢ;->ʽ:I

    iget-boolean v5, v4, Lⁱי/ʿᵢ;->ﾞᴵ:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-object p3, v4, Lⁱי/ʿᵢ;->ˈ:Ljava/lang/Object;

    invoke-virtual {v4}, Lⁱי/ʿᵢ;->ⁱˊ()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lⁱי/ʼʼ;->ˉٴ:[Lⁱי/ˑﹳ;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    if-eqz v3, :cond_4

    if-eq p1, v4, :cond_3

    iget v5, v3, Lⁱי/ˑﹳ;->ᴵˊ:I

    if-ne v5, p1, :cond_4

    :cond_3
    invoke-virtual {p0, v3}, Lⁱי/ʼʼ;->ˋˊ(Lⁱי/ʿ;)Lⁱי/ʿᵢ;

    move-result-object v3

    iget-boolean v5, v3, Lⁱי/ʿᵢ;->ﾞᴵ:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput p2, v3, Lⁱי/ʿᵢ;->ʽ:I

    iget-boolean v5, v3, Lⁱי/ʿᵢ;->ﾞᴵ:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-object p3, v3, Lⁱי/ʿᵢ;->ˈ:Ljava/lang/Object;

    invoke-virtual {v3}, Lⁱי/ʿᵢ;->ⁱˊ()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final ˈـ()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ـʻ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v0, v0, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget v0, v0, Lﹳᵢ/ᵢˏ;->ʽ:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final ˉʽ(F)V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lᐧˎ/ʼʼ;->ᵔᵢ(FFF)F

    move-result p1

    iget v0, p0, Lⁱי/ʼʼ;->ᵎʿ:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lⁱי/ʼʼ;->ᵎʿ:F

    iget-object v0, p0, Lⁱי/ʼʼ;->ᵔי:Lⁱי/ᴵᵔ;

    iget-object v0, v0, Lⁱי/ᴵᵔ;->ˉٴ:Lᐧˎ/ʻٴ;

    const/16 v1, 0x20

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lᐧˎ/ʻٴ;->ﹳٴ(ILjava/lang/Object;)Lᐧˎ/ʽﹳ;

    move-result-object v0

    invoke-virtual {v0}, Lᐧˎ/ʽﹳ;->ⁱˊ()V

    new-instance v0, Lⁱי/ᵔﹳ;

    invoke-direct {v0, p1}, Lⁱי/ᵔﹳ;-><init>(F)V

    iget-object p1, p0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    const/16 v1, 0x16

    invoke-virtual {p1, v1, v0}, Lᐧˎ/ˉʿ;->ᵎﹶ(ILᐧˎ/ˆʾ;)V

    return-void
.end method

.method public final ˊﹳ(Lⁱי/ᴵˑ;Lʽⁱ/ʼˈ;Landroid/util/Pair;)Lⁱי/ᴵˑ;
    .locals 22

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v1}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    move-object/from16 v3, p1

    iget-object v6, v3, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    invoke-virtual/range {p0 .. p1}, Lⁱי/ʼʼ;->יˉ(Lⁱי/ᴵˑ;)J

    move-result-wide v7

    invoke-virtual/range {p1 .. p2}, Lⁱי/ᴵˑ;->ˆʾ(Lʽⁱ/ʼˈ;)Lⁱי/ᴵˑ;

    move-result-object v9

    invoke-virtual {v1}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v10, Lⁱי/ᴵˑ;->ʽﹳ:Lﹳᵢ/ᵢˏ;

    iget-wide v1, v0, Lⁱי/ʼʼ;->ˋˊ:J

    invoke-static {v1, v2}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v11

    sget-object v19, Lﹳᵢ/ʻᵎ;->ˈ:Lﹳᵢ/ʻᵎ;

    iget-object v1, v0, Lⁱי/ʼʼ;->ᴵˊ:Lﹶʽ/ʼʼ;

    sget-object v21, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    const-wide/16 v17, 0x0

    move-wide v13, v11

    move-wide v15, v11

    move-object/from16 v20, v1

    invoke-virtual/range {v9 .. v21}, Lⁱי/ᴵˑ;->ˈ(Lﹳᵢ/ᵢˏ;JJJJLﹳᵢ/ʻᵎ;Lﹶʽ/ʼʼ;Ljava/util/List;)Lⁱי/ᴵˑ;

    move-result-object v1

    invoke-virtual {v1, v10}, Lⁱי/ᴵˑ;->ʽ(Lﹳᵢ/ᵢˏ;)Lⁱי/ᴵˑ;

    move-result-object v1

    iget-wide v2, v1, Lⁱי/ᴵˑ;->יـ:J

    iput-wide v2, v1, Lⁱי/ᴵˑ;->ᵔﹳ:J

    return-object v1

    :cond_2
    iget-object v3, v9, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget-object v3, v3, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v11, Lﹳᵢ/ᵢˏ;

    iget-object v12, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v11, v12}, Lﹳᵢ/ᵢˏ;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v11, v9, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    :goto_2
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v7, v8}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v7

    invoke-virtual {v6}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lⁱי/ʼʼ;->ˈʿ:Lʽⁱ/ˋᵔ;

    invoke-virtual {v6, v3, v2}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    move-result-object v2

    iget-wide v2, v2, Lʽⁱ/ˋᵔ;->ˑﹳ:J

    sub-long/2addr v7, v2

    :cond_4
    if-eqz v10, :cond_5

    cmp-long v2, v12, v7

    if-gez v2, :cond_6

    :cond_5
    move v1, v10

    move-object v10, v11

    move-wide v11, v12

    goto/16 :goto_6

    :cond_6
    if-nez v2, :cond_a

    iget-object v2, v9, Lⁱי/ᴵˑ;->ٴﹶ:Lﹳᵢ/ᵢˏ;

    iget-object v2, v2, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    iget-object v3, v0, Lⁱי/ʼʼ;->ˈʿ:Lʽⁱ/ˋᵔ;

    invoke-virtual {v1, v2, v3, v4}, Lʽⁱ/ʼˈ;->ﾞᴵ(ILʽⁱ/ˋᵔ;Z)Lʽⁱ/ˋᵔ;

    move-result-object v2

    iget v2, v2, Lʽⁱ/ˋᵔ;->ʽ:I

    iget-object v3, v11, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object v4, v0, Lⁱי/ʼʼ;->ˈʿ:Lʽⁱ/ˋᵔ;

    invoke-virtual {v1, v3, v4}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    move-result-object v3

    iget v3, v3, Lʽⁱ/ˋᵔ;->ʽ:I

    if-eq v2, v3, :cond_7

    goto :goto_3

    :cond_7
    return-object v9

    :cond_8
    :goto_3
    iget-object v2, v11, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object v3, v0, Lⁱי/ʼʼ;->ˈʿ:Lʽⁱ/ˋᵔ;

    invoke-virtual {v1, v2, v3}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    invoke-virtual {v11}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lⁱי/ʼʼ;->ˈʿ:Lʽⁱ/ˋᵔ;

    iget v2, v11, Lﹳᵢ/ᵢˏ;->ⁱˊ:I

    iget v3, v11, Lﹳᵢ/ᵢˏ;->ʽ:I

    invoke-virtual {v1, v2, v3}, Lʽⁱ/ˋᵔ;->ﹳٴ(II)J

    move-result-wide v1

    :goto_4
    move-object v10, v11

    goto :goto_5

    :cond_9
    iget-object v1, v0, Lⁱי/ʼʼ;->ˈʿ:Lʽⁱ/ˋᵔ;

    iget-wide v1, v1, Lʽⁱ/ˋᵔ;->ˈ:J

    goto :goto_4

    :goto_5
    iget-wide v11, v9, Lⁱי/ᴵˑ;->יـ:J

    iget-wide v13, v9, Lⁱי/ᴵˑ;->יـ:J

    iget-wide v3, v9, Lⁱי/ᴵˑ;->ˈ:J

    iget-wide v5, v9, Lⁱי/ᴵˑ;->יـ:J

    sub-long v17, v1, v5

    iget-object v5, v9, Lⁱי/ᴵˑ;->ᵔᵢ:Lﹳᵢ/ʻᵎ;

    iget-object v6, v9, Lⁱי/ᴵˑ;->ʼˎ:Lﹶʽ/ʼʼ;

    iget-object v7, v9, Lⁱי/ᴵˑ;->ˆʾ:Ljava/util/List;

    move-wide v15, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    invoke-virtual/range {v9 .. v21}, Lⁱי/ᴵˑ;->ˈ(Lﹳᵢ/ᵢˏ;JJJJLﹳᵢ/ʻᵎ;Lﹶʽ/ʼʼ;Ljava/util/List;)Lⁱי/ᴵˑ;

    move-result-object v3

    invoke-virtual {v3, v10}, Lⁱי/ᴵˑ;->ʽ(Lﹳᵢ/ᵢˏ;)Lⁱי/ᴵˑ;

    move-result-object v3

    iput-wide v1, v3, Lⁱי/ᴵˑ;->ᵔﹳ:J

    return-object v3

    :cond_a
    move-object v10, v11

    invoke-virtual {v10}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-wide v1, v9, Lⁱי/ᴵˑ;->ﹳᐧ:J

    sub-long v3, v12, v7

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    iget-wide v1, v9, Lⁱי/ᴵˑ;->ᵔﹳ:J

    iget-object v3, v9, Lⁱי/ᴵˑ;->ٴﹶ:Lﹳᵢ/ᵢˏ;

    iget-object v4, v9, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    invoke-virtual {v3, v4}, Lﹳᵢ/ᵢˏ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    add-long v1, v12, v17

    :cond_b
    iget-object v3, v9, Lⁱי/ᴵˑ;->ᵔᵢ:Lﹳᵢ/ʻᵎ;

    iget-object v4, v9, Lⁱי/ᴵˑ;->ʼˎ:Lﹶʽ/ʼʼ;

    iget-object v5, v9, Lⁱי/ᴵˑ;->ˆʾ:Ljava/util/List;

    move-wide v11, v12

    move-wide v13, v11

    move-wide v15, v11

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-virtual/range {v9 .. v21}, Lⁱי/ᴵˑ;->ˈ(Lﹳᵢ/ᵢˏ;JJJJLﹳᵢ/ʻᵎ;Lﹶʽ/ʼʼ;Ljava/util/List;)Lⁱי/ᴵˑ;

    move-result-object v3

    iput-wide v1, v3, Lⁱי/ᴵˑ;->ᵔﹳ:J

    return-object v3

    :goto_6
    invoke-virtual {v10}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    if-nez v1, :cond_c

    sget-object v2, Lﹳᵢ/ʻᵎ;->ˈ:Lﹳᵢ/ʻᵎ;

    :goto_7
    move-object/from16 v19, v2

    goto :goto_8

    :cond_c
    iget-object v2, v9, Lⁱי/ᴵˑ;->ᵔᵢ:Lﹳᵢ/ʻᵎ;

    goto :goto_7

    :goto_8
    if-nez v1, :cond_d

    iget-object v2, v0, Lⁱי/ʼʼ;->ᴵˊ:Lﹶʽ/ʼʼ;

    :goto_9
    move-object/from16 v20, v2

    goto :goto_a

    :cond_d
    iget-object v2, v9, Lⁱי/ᴵˑ;->ʼˎ:Lﹶʽ/ʼʼ;

    goto :goto_9

    :goto_a
    if-nez v1, :cond_e

    sget-object v1, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v1, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    :goto_b
    move-object/from16 v21, v1

    goto :goto_c

    :cond_e
    iget-object v1, v9, Lⁱי/ᴵˑ;->ˆʾ:Ljava/util/List;

    goto :goto_b

    :goto_c
    const-wide/16 v17, 0x0

    move-wide v13, v11

    move-wide v15, v11

    invoke-virtual/range {v9 .. v21}, Lⁱי/ᴵˑ;->ˈ(Lﹳᵢ/ᵢˏ;JJJJLﹳᵢ/ʻᵎ;Lﹶʽ/ʼʼ;Ljava/util/List;)Lⁱי/ᴵˑ;

    move-result-object v1

    invoke-virtual {v1, v10}, Lⁱי/ᴵˑ;->ʽ(Lﹳᵢ/ᵢˏ;)Lⁱי/ᴵˑ;

    move-result-object v1

    iput-wide v11, v1, Lⁱי/ᴵˑ;->ᵔﹳ:J

    return-object v1
.end method

.method public final ˊﾞ()Lʽⁱ/ˉـ;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v0, p0, Lⁱי/ʼʼ;->ᵎⁱ:Lﹶʽ/ـˆ;

    check-cast v0, Lﹶʽ/ﹳᐧ;

    invoke-virtual {v0}, Lﹶʽ/ﹳᐧ;->ˑﹳ()Lﹶʽ/ˆʾ;

    move-result-object v0

    iget-boolean v1, p0, Lⁱי/ʼʼ;->ﹳﹳ:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lﹶʽ/ʼˎ;

    invoke-direct {v1, v0}, Lﹶʽ/ʼˎ;-><init>(Lﹶʽ/ˆʾ;)V

    iget-object v0, p0, Lⁱי/ʼʼ;->ʻˋ:Lʼʻ/ᵔٴ;

    invoke-virtual {v1, v0}, Lﹶʽ/ʼˎ;->ٴﹶ(Ljava/util/Set;)V

    new-instance v0, Lﹶʽ/ˆʾ;

    invoke-direct {v0, v1}, Lﹶʽ/ˆʾ;-><init>(Lﹶʽ/ʼˎ;)V

    :cond_0
    return-object v0
.end method

.method public final ˋˊ(Lⁱי/ʿ;)Lⁱי/ʿᵢ;
    .locals 7

    .prologue
    iget-object v0, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    invoke-virtual {p0, v0}, Lⁱי/ʼʼ;->ﹶʽ(Lⁱי/ᴵˑ;)I

    move-result v0

    new-instance v1, Lⁱי/ʿᵢ;

    iget-object v2, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v4, v2, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    move v5, v0

    iget-object v2, p0, Lⁱי/ʼʼ;->ᵔי:Lⁱי/ᴵᵔ;

    iget-object v6, v2, Lⁱי/ᴵᵔ;->ٴʼ:Landroid/os/Looper;

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lⁱי/ʿᵢ;-><init>(Lⁱי/ˉـ;Lⁱי/ʿ;Lʽⁱ/ʼˈ;ILandroid/os/Looper;)V

    return-object v1
.end method

.method public final ˋـ()Lʽⁱ/ʿᵢ;
    .locals 1

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v0, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v0, v0, Lⁱי/ᴵˑ;->ʼˎ:Lﹶʽ/ʼʼ;

    iget-object v0, v0, Lﹶʽ/ʼʼ;->ˈ:Lʽⁱ/ʿᵢ;

    return-object v0
.end method

.method public final ˎʼ(Lⁱי/ᴵˑ;IZIJIZ)V
    .locals 33

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    iget-object v3, v0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iput-object v1, v0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v4, v3, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    iget-object v5, v1, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    invoke-virtual {v4, v5}, Lʽⁱ/ʼˈ;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v5, Lʽⁱ/ˊˋ;

    iget-object v6, v0, Lⁱי/ʼʼ;->ˈʿ:Lʽⁱ/ˋᵔ;

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v3, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    iget-object v10, v3, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget-object v11, v1, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    iget-object v12, v1, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    invoke-virtual {v11}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v13

    const/16 v16, 0x0

    const/16 v17, 0x2

    const-wide/16 v14, 0x0

    const/16 v18, 0x3

    if-eqz v13, :cond_0

    invoke-virtual {v9}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v13

    if-eqz v13, :cond_0

    new-instance v5, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v11}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v13

    invoke-virtual {v9}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v7

    if-eq v13, v7, :cond_1

    new-instance v5, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    iget-object v7, v10, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v9, v7, v6}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    move-result-object v7

    iget v7, v7, Lʽⁱ/ˋᵔ;->ʽ:I

    invoke-virtual {v9, v7, v5, v14, v15}, Lʽⁱ/ʼˈ;->ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;

    move-result-object v7

    iget-object v7, v7, Lʽⁱ/ˊˋ;->ﹳٴ:Ljava/lang/Object;

    iget-object v9, v12, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v11, v9, v6}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    move-result-object v6

    iget v6, v6, Lʽⁱ/ˋᵔ;->ʽ:I

    invoke-virtual {v11, v6, v5, v14, v15}, Lʽⁱ/ʼˈ;->ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;

    move-result-object v5

    iget-object v5, v5, Lʽⁱ/ˊˋ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz p3, :cond_2

    if-nez v2, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    move/from16 v5, v17

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    move/from16 v5, v18

    :goto_0
    new-instance v6, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v6

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_5
    if-eqz p3, :cond_6

    if-nez v2, :cond_6

    iget-wide v5, v10, Lﹳᵢ/ᵢˏ;->ˈ:J

    iget-wide v9, v12, Lﹳᵢ/ᵢˏ;->ˈ:J

    cmp-long v5, v5, v9

    if-gez v5, :cond_6

    new-instance v5, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    if-eqz p3, :cond_7

    const/4 v5, 0x1

    if-ne v2, v5, :cond_7

    if-eqz p8, :cond_7

    new-instance v5, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    new-instance v5, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v6, :cond_9

    iget-object v8, v1, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    invoke-virtual {v8}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v1, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    iget-object v9, v1, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget-object v9, v9, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object v10, v0, Lⁱי/ʼʼ;->ˈʿ:Lʽⁱ/ˋᵔ;

    invoke-virtual {v8, v9, v10}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    move-result-object v8

    iget v8, v8, Lʽⁱ/ˋᵔ;->ʽ:I

    iget-object v9, v1, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    iget-object v10, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v10, Lʽⁱ/ˊˋ;

    invoke-virtual {v9, v8, v10, v14, v15}, Lʽⁱ/ʼˈ;->ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;

    move-result-object v8

    iget-object v8, v8, Lʽⁱ/ˊˋ;->ʽ:Lʽⁱ/ᴵˊ;

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    :goto_2
    sget-object v9, Lʽⁱ/ᴵᵔ;->ᴵˊ:Lʽⁱ/ᴵᵔ;

    iput-object v9, v0, Lⁱי/ʼʼ;->ⁱᴵ:Lʽⁱ/ᴵᵔ;

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    :goto_3
    if-nez v6, :cond_a

    iget-object v9, v3, Lⁱי/ᴵˑ;->ˆʾ:Ljava/util/List;

    iget-object v10, v1, Lⁱי/ᴵˑ;->ˆʾ:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    :cond_a
    iget-object v9, v0, Lⁱי/ʼʼ;->ⁱᴵ:Lʽⁱ/ᴵᵔ;

    invoke-virtual {v9}, Lʽⁱ/ᴵᵔ;->ﹳٴ()Lʽⁱ/ˈٴ;

    move-result-object v9

    iget-object v10, v1, Lⁱי/ᴵˑ;->ˆʾ:Ljava/util/List;

    move/from16 v11, v16

    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_c

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lʽⁱ/ٴᵢ;

    move/from16 v13, v16

    :goto_5
    iget-object v7, v12, Lʽⁱ/ٴᵢ;->ﹳٴ:[Lʽⁱ/ˊʻ;

    array-length v14, v7

    if-ge v13, v14, :cond_b

    aget-object v7, v7, v13

    invoke-interface {v7, v9}, Lʽⁱ/ˊʻ;->ﹳٴ(Lʽⁱ/ˈٴ;)V

    add-int/lit8 v13, v13, 0x1

    const-wide/16 v14, 0x0

    goto :goto_5

    :cond_b
    add-int/lit8 v11, v11, 0x1

    const-wide/16 v14, 0x0

    goto :goto_4

    :cond_c
    new-instance v7, Lʽⁱ/ᴵᵔ;

    invoke-direct {v7, v9}, Lʽⁱ/ᴵᵔ;-><init>(Lʽⁱ/ˈٴ;)V

    iput-object v7, v0, Lⁱי/ʼʼ;->ⁱᴵ:Lʽⁱ/ᴵᵔ;

    :cond_d
    invoke-virtual {v0}, Lⁱי/ʼʼ;->ﹶˎ()Lʽⁱ/ᴵᵔ;

    move-result-object v7

    iget-object v9, v0, Lⁱי/ʼʼ;->ᐧﹶ:Lʽⁱ/ᴵᵔ;

    invoke-virtual {v7, v9}, Lʽⁱ/ᴵᵔ;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-object v7, v0, Lⁱי/ʼʼ;->ᐧﹶ:Lʽⁱ/ᴵᵔ;

    iget-boolean v7, v3, Lⁱי/ᴵˑ;->ﾞʻ:Z

    iget-boolean v10, v1, Lⁱי/ᴵˑ;->ﾞʻ:Z

    if-eq v7, v10, :cond_e

    const/4 v7, 0x1

    goto :goto_6

    :cond_e
    move/from16 v7, v16

    :goto_6
    iget v10, v3, Lⁱי/ᴵˑ;->ˑﹳ:I

    iget v11, v1, Lⁱי/ᴵˑ;->ˑﹳ:I

    if-eq v10, v11, :cond_f

    const/4 v10, 0x1

    goto :goto_7

    :cond_f
    move/from16 v10, v16

    :goto_7
    if-nez v10, :cond_10

    if-eqz v7, :cond_11

    :cond_10
    invoke-virtual {v0}, Lⁱי/ʼʼ;->ʻˆ()V

    :cond_11
    iget-boolean v11, v3, Lⁱי/ᴵˑ;->ᵎﹶ:Z

    iget-boolean v12, v1, Lⁱי/ᴵˑ;->ᵎﹶ:Z

    if-eq v11, v12, :cond_12

    const/4 v11, 0x1

    goto :goto_8

    :cond_12
    move/from16 v11, v16

    :goto_8
    if-nez v4, :cond_13

    iget-object v4, v0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    new-instance v12, Lᵔʻ/ـˏ;

    const/4 v13, 0x2

    move/from16 v14, p2

    invoke-direct {v12, v14, v13, v1}, Lᵔʻ/ـˏ;-><init>(IILjava/lang/Object;)V

    move/from16 v13, v16

    invoke-virtual {v4, v13, v12}, Lᐧˎ/ˉʿ;->ˈ(ILᐧˎ/ˆʾ;)V

    :cond_13
    if-eqz p3, :cond_1b

    new-instance v4, Lʽⁱ/ˋᵔ;

    invoke-direct {v4}, Lʽⁱ/ˋᵔ;-><init>()V

    iget-object v12, v3, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    invoke-virtual {v12}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v12

    if-nez v12, :cond_14

    iget-object v12, v3, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget-object v12, v12, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object v13, v3, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    invoke-virtual {v13, v12, v4}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    iget v13, v4, Lʽⁱ/ˋᵔ;->ʽ:I

    iget-object v14, v3, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    invoke-virtual {v14, v12}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    move-result v14

    iget-object v15, v3, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    move/from16 v16, v6

    iget-object v6, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v6, Lʽⁱ/ˊˋ;

    move/from16 v19, v9

    move/from16 v20, v10

    const-wide/16 v9, 0x0

    invoke-virtual {v15, v13, v6, v9, v10}, Lʽⁱ/ʼˈ;->ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;

    move-result-object v6

    iget-object v6, v6, Lʽⁱ/ˊˋ;->ﹳٴ:Ljava/lang/Object;

    iget-object v9, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v9, Lʽⁱ/ˊˋ;

    iget-object v9, v9, Lʽⁱ/ˊˋ;->ʽ:Lʽⁱ/ᴵˊ;

    move-object/from16 v22, v6

    move-object/from16 v24, v9

    move-object/from16 v25, v12

    move/from16 v23, v13

    move/from16 v26, v14

    goto :goto_9

    :cond_14
    move/from16 v16, v6

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v23, p7

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, -0x1

    :goto_9
    if-nez v2, :cond_17

    iget-object v6, v3, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    invoke-virtual {v6}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, v3, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget v9, v6, Lﹳᵢ/ᵢˏ;->ⁱˊ:I

    iget v6, v6, Lﹳᵢ/ᵢˏ;->ʽ:I

    invoke-virtual {v4, v9, v6}, Lʽⁱ/ˋᵔ;->ﹳٴ(II)J

    move-result-wide v9

    invoke-static {v3}, Lⁱי/ʼʼ;->ˊˊ(Lⁱי/ᴵˑ;)J

    move-result-wide v12

    goto :goto_c

    :cond_15
    iget-object v6, v3, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget v6, v6, Lﹳᵢ/ᵢˏ;->ˑﹳ:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_16

    iget-object v4, v0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    invoke-static {v4}, Lⁱי/ʼʼ;->ˊˊ(Lⁱי/ᴵˑ;)J

    move-result-wide v9

    :goto_a
    move-wide v12, v9

    goto :goto_c

    :cond_16
    iget-wide v9, v4, Lʽⁱ/ˋᵔ;->ˑﹳ:J

    iget-wide v12, v4, Lʽⁱ/ˋᵔ;->ˈ:J

    :goto_b
    add-long/2addr v9, v12

    goto :goto_a

    :cond_17
    iget-object v6, v3, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    invoke-virtual {v6}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v6

    if-eqz v6, :cond_18

    iget-wide v9, v3, Lⁱי/ᴵˑ;->יـ:J

    invoke-static {v3}, Lⁱי/ʼʼ;->ˊˊ(Lⁱי/ᴵˑ;)J

    move-result-wide v12

    goto :goto_c

    :cond_18
    iget-wide v9, v4, Lʽⁱ/ˋᵔ;->ˑﹳ:J

    iget-wide v12, v3, Lⁱי/ᴵˑ;->יـ:J

    goto :goto_b

    :goto_c
    new-instance v21, Lʽⁱ/ˆﾞ;

    invoke-static {v9, v10}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v27

    invoke-static {v12, v13}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v29

    iget-object v4, v3, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget v6, v4, Lﹳᵢ/ᵢˏ;->ⁱˊ:I

    iget v4, v4, Lﹳᵢ/ᵢˏ;->ʽ:I

    move/from16 v32, v4

    move/from16 v31, v6

    invoke-direct/range {v21 .. v32}, Lʽⁱ/ˆﾞ;-><init>(Ljava/lang/Object;ILʽⁱ/ᴵˊ;Ljava/lang/Object;IJJII)V

    move-object/from16 v4, v21

    iget-object v6, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v6, Lʽⁱ/ˊˋ;

    invoke-virtual {v0}, Lⁱי/ʼʼ;->ˎʾ()I

    move-result v9

    iget-object v10, v0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v10, v10, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    invoke-virtual {v10}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v10

    if-nez v10, :cond_19

    iget-object v10, v0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v12, v10, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget-object v12, v12, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object v10, v10, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    iget-object v13, v0, Lⁱי/ʼʼ;->ˈʿ:Lʽⁱ/ˋᵔ;

    invoke-virtual {v10, v12, v13}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    iget-object v10, v0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v10, v10, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    invoke-virtual {v10, v12}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    move-result v10

    iget-object v13, v0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v13, v13, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    const-wide/16 v14, 0x0

    invoke-virtual {v13, v9, v6, v14, v15}, Lʽⁱ/ʼˈ;->ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;

    move-result-object v13

    iget-object v13, v13, Lʽⁱ/ˊˋ;->ﹳٴ:Ljava/lang/Object;

    iget-object v6, v6, Lʽⁱ/ˊˋ;->ʽ:Lʽⁱ/ᴵˊ;

    move-object/from16 v24, v6

    move/from16 v26, v10

    move-object/from16 v25, v12

    move-object/from16 v22, v13

    goto :goto_d

    :cond_19
    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, -0x1

    :goto_d
    invoke-static/range {p5 .. p6}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v27

    new-instance v21, Lʽⁱ/ˆﾞ;

    iget-object v6, v0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v6, v6, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    invoke-virtual {v6}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v6

    if-eqz v6, :cond_1a

    iget-object v6, v0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    invoke-static {v6}, Lⁱי/ʼʼ;->ˊˊ(Lⁱי/ᴵˑ;)J

    move-result-wide v12

    invoke-static {v12, v13}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v12

    move-wide/from16 v29, v12

    goto :goto_e

    :cond_1a
    move-wide/from16 v29, v27

    :goto_e
    iget-object v6, v0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v6, v6, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget v10, v6, Lﹳᵢ/ᵢˏ;->ⁱˊ:I

    iget v6, v6, Lﹳᵢ/ᵢˏ;->ʽ:I

    move/from16 v32, v6

    move/from16 v23, v9

    move/from16 v31, v10

    invoke-direct/range {v21 .. v32}, Lʽⁱ/ˆﾞ;-><init>(Ljava/lang/Object;ILʽⁱ/ᴵˊ;Ljava/lang/Object;IJJII)V

    move-object/from16 v6, v21

    iget-object v9, v0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    new-instance v10, Lٴᐧ/ˑﹳ;

    invoke-direct {v10, v2, v4, v6}, Lٴᐧ/ˑﹳ;-><init>(ILʽⁱ/ˆﾞ;Lʽⁱ/ˆﾞ;)V

    const/16 v2, 0xb

    invoke-virtual {v9, v2, v10}, Lᐧˎ/ˉʿ;->ˈ(ILᐧˎ/ˆʾ;)V

    goto :goto_f

    :cond_1b
    move/from16 v16, v6

    move/from16 v19, v9

    move/from16 v20, v10

    :goto_f
    if-eqz v16, :cond_1c

    iget-object v2, v0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    new-instance v4, Lᵔʻ/ـˏ;

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v8}, Lᵔʻ/ـˏ;-><init>(IILjava/lang/Object;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4}, Lᐧˎ/ˉʿ;->ˈ(ILᐧˎ/ˆʾ;)V

    :cond_1c
    iget-object v2, v3, Lⁱי/ᴵˑ;->ﾞᴵ:Landroidx/media3/exoplayer/ExoPlaybackException;

    iget-object v4, v1, Lⁱי/ᴵˑ;->ﾞᴵ:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eq v2, v4, :cond_1d

    iget-object v2, v0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    new-instance v4, Lⁱי/ʼᐧ;

    const/4 v5, 0x7

    invoke-direct {v4, v1, v5}, Lⁱי/ʼᐧ;-><init>(Lⁱי/ᴵˑ;I)V

    const/16 v5, 0xa

    invoke-virtual {v2, v5, v4}, Lᐧˎ/ˉʿ;->ˈ(ILᐧˎ/ˆʾ;)V

    iget-object v2, v1, Lⁱי/ᴵˑ;->ﾞᴵ:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v2, :cond_1d

    iget-object v2, v0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    new-instance v4, Lⁱי/ʼᐧ;

    const/16 v6, 0x8

    invoke-direct {v4, v1, v6}, Lⁱי/ʼᐧ;-><init>(Lⁱי/ᴵˑ;I)V

    invoke-virtual {v2, v5, v4}, Lᐧˎ/ˉʿ;->ˈ(ILᐧˎ/ˆʾ;)V

    :cond_1d
    iget-object v2, v3, Lⁱי/ᴵˑ;->ʼˎ:Lﹶʽ/ʼʼ;

    iget-object v4, v1, Lⁱי/ᴵˑ;->ʼˎ:Lﹶʽ/ʼʼ;

    if-eq v2, v4, :cond_1e

    iget-object v2, v0, Lⁱי/ʼʼ;->ᵎⁱ:Lﹶʽ/ـˆ;

    iget-object v4, v4, Lﹶʽ/ʼʼ;->ˑﹳ:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Lﹶʽ/ʻٴ;

    iput-object v4, v2, Lﹶʽ/ـˆ;->ʽ:Lﹶʽ/ʻٴ;

    iget-object v2, v0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    new-instance v4, Lⁱי/ʼᐧ;

    const/16 v5, 0x9

    invoke-direct {v4, v1, v5}, Lⁱי/ʼᐧ;-><init>(Lⁱי/ᴵˑ;I)V

    move/from16 v5, v17

    invoke-virtual {v2, v5, v4}, Lᐧˎ/ˉʿ;->ˈ(ILᐧˎ/ˆʾ;)V

    :cond_1e
    if-nez v19, :cond_1f

    iget-object v2, v0, Lⁱי/ʼʼ;->ᐧﹶ:Lʽⁱ/ᴵᵔ;

    iget-object v4, v0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    new-instance v5, Lٴˉ/ﹳٴ;

    const/16 v6, 0x12

    invoke-direct {v5, v6, v2}, Lٴˉ/ﹳٴ;-><init>(ILjava/lang/Object;)V

    const/16 v2, 0xe

    invoke-virtual {v4, v2, v5}, Lᐧˎ/ˉʿ;->ˈ(ILᐧˎ/ˆʾ;)V

    :cond_1f
    if-eqz v11, :cond_20

    iget-object v2, v0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    new-instance v4, Lⁱי/ʼᐧ;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lⁱי/ʼᐧ;-><init>(Lⁱי/ᴵˑ;I)V

    move/from16 v5, v18

    invoke-virtual {v2, v5, v4}, Lᐧˎ/ˉʿ;->ˈ(ILᐧˎ/ˆʾ;)V

    :cond_20
    if-nez v20, :cond_21

    if-eqz v7, :cond_22

    :cond_21
    iget-object v2, v0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    new-instance v4, Lⁱי/ʼᐧ;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Lⁱי/ʼᐧ;-><init>(Lⁱי/ᴵˑ;I)V

    const/4 v9, -0x1

    invoke-virtual {v2, v9, v4}, Lᐧˎ/ˉʿ;->ˈ(ILᐧˎ/ˆʾ;)V

    :cond_22
    if-eqz v20, :cond_23

    iget-object v2, v0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    new-instance v4, Lⁱי/ʼᐧ;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v5}, Lⁱי/ʼᐧ;-><init>(Lⁱי/ᴵˑ;I)V

    const/4 v5, 0x4

    invoke-virtual {v2, v5, v4}, Lᐧˎ/ˉʿ;->ˈ(ILᐧˎ/ˆʾ;)V

    :cond_23
    if-nez v7, :cond_24

    iget v2, v3, Lⁱי/ᴵˑ;->ˉʿ:I

    iget v4, v1, Lⁱי/ᴵˑ;->ˉʿ:I

    if-eq v2, v4, :cond_25

    :cond_24
    iget-object v2, v0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    new-instance v4, Lⁱי/ʼᐧ;

    const/4 v5, 0x3

    invoke-direct {v4, v1, v5}, Lⁱי/ʼᐧ;-><init>(Lⁱי/ᴵˑ;I)V

    const/4 v5, 0x5

    invoke-virtual {v2, v5, v4}, Lᐧˎ/ˉʿ;->ˈ(ILᐧˎ/ˆʾ;)V

    :cond_25
    iget v2, v3, Lⁱי/ᴵˑ;->ᵔʾ:I

    iget v4, v1, Lⁱי/ᴵˑ;->ᵔʾ:I

    if-eq v2, v4, :cond_26

    iget-object v2, v0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    new-instance v4, Lⁱי/ʼᐧ;

    const/4 v5, 0x4

    invoke-direct {v4, v1, v5}, Lⁱי/ʼᐧ;-><init>(Lⁱי/ᴵˑ;I)V

    const/4 v5, 0x6

    invoke-virtual {v2, v5, v4}, Lᐧˎ/ˉʿ;->ˈ(ILᐧˎ/ˆʾ;)V

    :cond_26
    invoke-virtual {v3}, Lⁱי/ᴵˑ;->ˉʿ()Z

    move-result v2

    invoke-virtual {v1}, Lⁱי/ᴵˑ;->ˉʿ()Z

    move-result v4

    if-eq v2, v4, :cond_27

    iget-object v2, v0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    new-instance v4, Lⁱי/ʼᐧ;

    const/4 v5, 0x5

    invoke-direct {v4, v1, v5}, Lⁱי/ʼᐧ;-><init>(Lⁱי/ᴵˑ;I)V

    const/4 v5, 0x7

    invoke-virtual {v2, v5, v4}, Lᐧˎ/ˉʿ;->ˈ(ILᐧˎ/ˆʾ;)V

    :cond_27
    iget-object v2, v3, Lⁱי/ᴵˑ;->ˉˆ:Lʽⁱ/ᵎⁱ;

    iget-object v4, v1, Lⁱי/ᴵˑ;->ˉˆ:Lʽⁱ/ᵎⁱ;

    invoke-virtual {v2, v4}, Lʽⁱ/ᵎⁱ;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, v0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    new-instance v4, Lⁱי/ʼᐧ;

    const/4 v5, 0x6

    invoke-direct {v4, v1, v5}, Lⁱי/ʼᐧ;-><init>(Lⁱי/ᴵˑ;I)V

    const/16 v5, 0xc

    invoke-virtual {v2, v5, v4}, Lᐧˎ/ˉʿ;->ˈ(ILᐧˎ/ˆʾ;)V

    :cond_28
    invoke-virtual {v0}, Lⁱי/ʼʼ;->ᴵٴ()V

    iget-object v2, v0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    invoke-virtual {v2}, Lᐧˎ/ˉʿ;->ʽ()V

    iget-boolean v2, v3, Lⁱי/ᴵˑ;->ʼᐧ:Z

    iget-boolean v1, v1, Lⁱי/ᴵˑ;->ʼᐧ:Z

    if-eq v2, v1, :cond_29

    iget-object v1, v0, Lⁱי/ʼʼ;->ᵔٴ:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lⁱי/ʻٴ;

    iget-object v2, v2, Lⁱי/ʻٴ;->ʾˋ:Lⁱי/ʼʼ;

    invoke-virtual {v2}, Lⁱי/ʼʼ;->ʻˆ()V

    goto :goto_10

    :cond_29
    return-void
.end method

.method public final ˎʾ()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v0, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    invoke-virtual {p0, v0}, Lⁱי/ʼʼ;->ﹶʽ(Lⁱי/ᴵˑ;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final ˎˉ(Lⁱי/ᴵˑ;)J
    .locals 4

    .prologue
    iget-object v0, p1, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    invoke-virtual {v0}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lⁱי/ʼʼ;->ˋˊ:J

    invoke-static {v0, v1}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-boolean v0, p1, Lⁱי/ᴵˑ;->ʼᐧ:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lⁱי/ᴵˑ;->ﾞʻ()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Lⁱי/ᴵˑ;->יـ:J

    :goto_0
    iget-object v2, p1, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    invoke-virtual {v2}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v2

    if-eqz v2, :cond_2

    return-wide v0

    :cond_2
    iget-object v2, p1, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    iget-object p1, p1, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget-object p1, p1, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object v3, p0, Lⁱי/ʼʼ;->ˈʿ:Lʽⁱ/ˋᵔ;

    invoke-virtual {v2, p1, v3}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    iget-wide v2, v3, Lʽⁱ/ˋᵔ;->ˑﹳ:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final ˎـ()V
    .locals 12

    .prologue
    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v0, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget v1, v0, Lⁱי/ᴵˑ;->ˑﹳ:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lⁱי/ᴵˑ;->ﾞᴵ(Landroidx/media3/exoplayer/ExoPlaybackException;)Lⁱי/ᴵˑ;

    move-result-object v0

    iget-object v1, v0, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    invoke-virtual {v1}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-static {v0, v1}, Lⁱי/ʼʼ;->ˏⁱ(Lⁱי/ᴵˑ;I)Lⁱי/ᴵˑ;

    move-result-object v4

    iget v0, p0, Lⁱי/ʼʼ;->ـﹶ:I

    add-int/2addr v0, v2

    iput v0, p0, Lⁱי/ʼʼ;->ـﹶ:I

    iget-object v0, p0, Lⁱי/ʼʼ;->ᵔי:Lⁱי/ᴵᵔ;

    iget-object v0, v0, Lⁱי/ᴵᵔ;->ˉٴ:Lᐧˎ/ʻٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lᐧˎ/ʻٴ;->ⁱˊ()Lᐧˎ/ʽﹳ;

    move-result-object v1

    iget-object v0, v0, Lᐧˎ/ʻٴ;->ﹳٴ:Landroid/os/Handler;

    const/16 v2, 0x1d

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, v1, Lᐧˎ/ʽﹳ;->ﹳٴ:Landroid/os/Message;

    invoke-virtual {v1}, Lᐧˎ/ʽﹳ;->ⁱˊ()V

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p0

    invoke-virtual/range {v3 .. v11}, Lⁱי/ʼʼ;->ˎʼ(Lⁱי/ᴵˑ;IZIJIZ)V

    return-void
.end method

.method public final ˏʻ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lⁱי/ʼʼ;->ˈٴ:Lᐧˎ/ˑﹳ;

    invoke-virtual {v0}, Lᐧˎ/ˑﹳ;->ⁱˊ()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lⁱי/ʼʼ;->ʼˈ:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v0, v2, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Player is accessed on the wrong thread.\nCurrent thread: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'\nExpected thread: \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lⁱי/ʼʼ;->ⁱי:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lⁱי/ʼʼ;->ʻʿ:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v2, "ExoPlayerImpl"

    invoke-static {v2, v0, v1}, Lᐧˎ/ﹳٴ;->ᴵᵔ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lⁱי/ʼʼ;->ʻʿ:Z

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method public final ˑˆ()J
    .locals 2

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v0, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    invoke-virtual {p0, v0}, Lⁱי/ʼʼ;->ˎˉ(Lⁱי/ᴵˑ;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final ˑﹶ(IZ)V
    .locals 13

    .prologue
    iget-boolean v0, p0, Lⁱי/ʼʼ;->ﹳﹳ:Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget v0, v0, Lⁱי/ᴵˑ;->ᵔʾ:I

    if-ne v0, v2, :cond_1

    if-nez p2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-boolean v4, v3, Lⁱי/ᴵˑ;->ﾞʻ:Z

    if-ne v4, p2, :cond_2

    iget v4, v3, Lⁱי/ᴵˑ;->ᵔʾ:I

    if-ne v4, v0, :cond_2

    iget v4, v3, Lⁱי/ᴵˑ;->ˉʿ:I

    if-ne v4, p1, :cond_2

    return-void

    :cond_2
    iget v4, p0, Lⁱי/ʼʼ;->ـﹶ:I

    add-int/2addr v4, v2

    iput v4, p0, Lⁱי/ʼʼ;->ـﹶ:I

    iget-boolean v4, v3, Lⁱי/ᴵˑ;->ʼᐧ:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lⁱי/ᴵˑ;->ﹳٴ()Lⁱי/ᴵˑ;

    move-result-object v3

    :cond_3
    invoke-virtual {v3, p1, v0, p2}, Lⁱי/ᴵˑ;->ˑﹳ(IIZ)Lⁱי/ᴵˑ;

    move-result-object v5

    shl-int/2addr v0, v1

    or-int/2addr p1, v0

    iget-object v0, p0, Lⁱי/ʼʼ;->ᵔי:Lⁱי/ᴵᵔ;

    iget-object v0, v0, Lⁱי/ᴵᵔ;->ˉٴ:Lᐧˎ/ʻٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lᐧˎ/ʻٴ;->ⁱˊ()Lᐧˎ/ʽﹳ;

    move-result-object v1

    iget-object v0, v0, Lᐧˎ/ʻٴ;->ﹳٴ:Landroid/os/Handler;

    invoke-virtual {v0, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iput-object p1, v1, Lᐧˎ/ʽﹳ;->ﹳٴ:Landroid/os/Message;

    invoke-virtual {v1}, Lᐧˎ/ʽﹳ;->ⁱˊ()V

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Lⁱי/ʼʼ;->ˎʼ(Lⁱי/ᴵˑ;IZIJIZ)V

    return-void
.end method

.method public final יʿ(Landroidx/media3/exoplayer/ExoPlaybackException;)V
    .locals 11

    .prologue
    iget-object v0, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v1, v0, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    invoke-virtual {v0, v1}, Lⁱי/ᴵˑ;->ʽ(Lﹳᵢ/ᵢˏ;)Lⁱי/ᴵˑ;

    move-result-object v0

    iget-wide v1, v0, Lⁱי/ᴵˑ;->יـ:J

    iput-wide v1, v0, Lⁱי/ᴵˑ;->ᵔﹳ:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lⁱי/ᴵˑ;->ﹳᐧ:J

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lⁱי/ʼʼ;->ˏⁱ(Lⁱי/ᴵˑ;I)Lⁱי/ᴵˑ;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lⁱי/ᴵˑ;->ﾞᴵ(Landroidx/media3/exoplayer/ExoPlaybackException;)Lⁱי/ᴵˑ;

    move-result-object v0

    :cond_0
    move-object v3, v0

    iget p1, p0, Lⁱי/ʼʼ;->ـﹶ:I

    add-int/2addr p1, v1

    iput p1, p0, Lⁱי/ʼʼ;->ـﹶ:I

    iget-object p1, p0, Lⁱי/ʼʼ;->ᵔי:Lⁱי/ᴵᵔ;

    iget-object p1, p1, Lⁱי/ᴵᵔ;->ˉٴ:Lᐧˎ/ʻٴ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lᐧˎ/ʻٴ;->ⁱˊ()Lᐧˎ/ʽﹳ;

    move-result-object v0

    iget-object p1, p1, Lᐧˎ/ʻٴ;->ﹳٴ:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object p1, v0, Lᐧˎ/ʽﹳ;->ﹳٴ:Landroid/os/Message;

    invoke-virtual {v0}, Lᐧˎ/ʽﹳ;->ⁱˊ()V

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lⁱי/ʼʼ;->ˎʼ(Lⁱי/ᴵˑ;IZIJIZ)V

    return-void
.end method

.method public final יˉ(Lⁱי/ᴵˑ;)J
    .locals 7

    .prologue
    iget-object v0, p1, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget-wide v1, p1, Lⁱי/ᴵˑ;->ʽ:J

    iget-object v3, p1, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    invoke-virtual {v0}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget-object v0, v0, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object v4, p0, Lⁱי/ʼʼ;->ˈʿ:Lʽⁱ/ˋᵔ;

    invoke-virtual {v3, v0, v4}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v5

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lⁱי/ʼʼ;->ﹶʽ(Lⁱי/ᴵˑ;)I

    move-result p1

    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lʽⁱ/ˊˋ;

    const-wide/16 v1, 0x0

    invoke-virtual {v3, p1, v0, v1, v2}, Lʽⁱ/ʼˈ;->ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;

    move-result-object p1

    iget-wide v0, p1, Lʽⁱ/ˊˋ;->ﾞʻ:J

    invoke-static {v0, v1}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v3, v4, Lʽⁱ/ˋᵔ;->ˑﹳ:J

    invoke-static {v3, v4}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v3

    invoke-static {v1, v2}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v0

    add-long/2addr v0, v3

    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Lⁱי/ʼʼ;->ˎˉ(Lⁱי/ᴵˑ;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final ـʻ()Z
    .locals 1

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v0, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v0, v0, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    invoke-virtual {v0}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v0

    return v0
.end method

.method public final ـˊ(JZI)V
    .locals 10

    .prologue
    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    const/4 v2, -0x1

    if-ne p4, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ltz p4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    iget-object v4, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v4, v4, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    invoke-virtual {v4}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lʽⁱ/ʼˈ;->ˉˆ()I

    move-result v5

    if-lt p4, v5, :cond_2

    :goto_1
    return-void

    :cond_2
    iget-object v5, p0, Lⁱי/ʼʼ;->ˊˋ:Lʻʿ/ˆʾ;

    iget-boolean v6, v5, Lʻʿ/ˆʾ;->ᵎⁱ:Z

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object v6

    iput-boolean v3, v5, Lʻʿ/ˆʾ;->ᵎⁱ:Z

    new-instance v7, Lar/tvplayer/core/data/api/parse/ˈ;

    const/16 v8, 0x14

    invoke-direct {v7, v8}, Lar/tvplayer/core/data/api/parse/ˈ;-><init>(I)V

    invoke-virtual {v5, v6, v2, v7}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    :cond_3
    iget v2, p0, Lⁱי/ʼʼ;->ـﹶ:I

    add-int/2addr v2, v3

    iput v2, p0, Lⁱי/ʼʼ;->ـﹶ:I

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ـʻ()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "ExoPlayerImpl"

    const-string v2, "seekTo ignored because an ad is playing"

    invoke-static {v1, v2}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lˋˋ/ˉٴ;

    iget-object v2, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    invoke-direct {v1, v2}, Lˋˋ/ˉٴ;-><init>(Lⁱי/ᴵˑ;)V

    invoke-virtual {v1, v3}, Lˋˋ/ˉٴ;->ﾞᴵ(I)V

    iget-object v2, p0, Lⁱי/ʼʼ;->ᵎˊ:Lⁱי/יـ;

    iget-object v2, v2, Lⁱי/יـ;->ʾˋ:Lⁱי/ʼʼ;

    iget-object v3, v2, Lⁱי/ʼʼ;->ٴʼ:Lᐧˎ/ʻٴ;

    new-instance v4, Lᐧᵢ/ˉʿ;

    const/4 v5, 0x3

    invoke-direct {v4, v2, v5, v1}, Lᐧᵢ/ˉʿ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Lᐧˎ/ʻٴ;->ʽ(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    iget-object v2, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget v3, v2, Lⁱי/ᴵˑ;->ˑﹳ:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_5

    const/4 v6, 0x4

    if-ne v3, v6, :cond_6

    invoke-virtual {v4}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    iget-object v2, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lⁱי/ᴵˑ;->ᵔᵢ(I)Lⁱי/ᴵˑ;

    move-result-object v2

    :cond_6
    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˎʾ()I

    move-result v7

    invoke-virtual {p0, v4, p4, p1, p2}, Lⁱי/ʼʼ;->ʽʾ(Lʽⁱ/ʼˈ;IJ)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {p0, v2, v4, v3}, Lⁱי/ʼʼ;->ˊﹳ(Lⁱי/ᴵˑ;Lʽⁱ/ʼˈ;Landroid/util/Pair;)Lⁱי/ᴵˑ;

    move-result-object v2

    invoke-static {p1, p2}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v8

    iget-object v3, p0, Lⁱי/ʼʼ;->ᵔי:Lⁱי/ᴵᵔ;

    iget-object v3, v3, Lⁱי/ᴵᵔ;->ˉٴ:Lᐧˎ/ʻٴ;

    new-instance v6, Lⁱי/ˈٴ;

    invoke-direct {v6, v4, p4, v8, v9}, Lⁱי/ˈٴ;-><init>(Lʽⁱ/ʼˈ;IJ)V

    invoke-virtual {v3, v5, v6}, Lᐧˎ/ʻٴ;->ﹳٴ(ILjava/lang/Object;)Lᐧˎ/ʽﹳ;

    move-result-object v1

    invoke-virtual {v1}, Lᐧˎ/ʽﹳ;->ⁱˊ()V

    const/4 v4, 0x1

    invoke-virtual {p0, v2}, Lⁱי/ʼʼ;->ˎˉ(Lⁱי/ᴵˑ;)J

    move-result-wide v5

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lⁱי/ʼʼ;->ˎʼ(Lⁱי/ᴵˑ;IZIJIZ)V

    return-void
.end method

.method public final ٴʿ()Z
    .locals 1

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v0, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-boolean v0, v0, Lⁱי/ᴵˑ;->ﾞʻ:Z

    return v0
.end method

.method public final ᴵٴ()V
    .locals 16

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lⁱי/ʼʼ;->ʽᵔ:Lʽⁱ/ٴʼ;

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    iget-object v2, v0, Lⁱי/ʼʼ;->ˊʻ:Lⁱי/ʼʼ;

    invoke-virtual {v2}, Lⁱי/ʼʼ;->ـʻ()Z

    move-result v3

    invoke-virtual {v2}, Lʽⁱ/ᵎﹶ;->ˑ()Z

    move-result v4

    invoke-virtual {v2}, Lⁱי/ʼʼ;->ﹳᵢ()Lʽⁱ/ʼˈ;

    move-result-object v5

    invoke-virtual {v5}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v6

    const/4 v8, 0x1

    const/4 v9, -0x1

    if-eqz v6, :cond_0

    move v5, v9

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lⁱי/ʼʼ;->ˎʾ()I

    move-result v6

    invoke-virtual {v2}, Lⁱי/ʼʼ;->ˏʻ()V

    iget v10, v2, Lⁱי/ʼʼ;->ʻᵎ:I

    if-ne v10, v8, :cond_1

    const/4 v10, 0x0

    :cond_1
    invoke-virtual {v2}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-boolean v11, v2, Lⁱי/ʼʼ;->ˊᵔ:Z

    invoke-virtual {v5, v6, v10, v11}, Lʽⁱ/ʼˈ;->ٴﹶ(IIZ)I

    move-result v5

    :goto_0
    if-eq v5, v9, :cond_2

    move v5, v8

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v2}, Lⁱי/ʼʼ;->ﹳᵢ()Lʽⁱ/ʼˈ;

    move-result-object v6

    invoke-virtual {v6}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v10

    if-eqz v10, :cond_3

    move v6, v9

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lⁱי/ʼʼ;->ˎʾ()I

    move-result v10

    invoke-virtual {v2}, Lⁱי/ʼʼ;->ˏʻ()V

    iget v11, v2, Lⁱי/ʼʼ;->ʻᵎ:I

    if-ne v11, v8, :cond_4

    const/4 v11, 0x0

    :cond_4
    invoke-virtual {v2}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-boolean v12, v2, Lⁱי/ʼʼ;->ˊᵔ:Z

    invoke-virtual {v6, v10, v11, v12}, Lʽⁱ/ʼˈ;->ˑﹳ(IIZ)I

    move-result v6

    :goto_2
    if-eq v6, v9, :cond_5

    move v6, v8

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v2}, Lʽⁱ/ᵎﹶ;->ʾˊ()Z

    move-result v9

    invoke-virtual {v2}, Lʽⁱ/ᵎﹶ;->י()Z

    move-result v10

    invoke-virtual {v2}, Lⁱי/ʼʼ;->ﹳᵢ()Lʽⁱ/ʼˈ;

    move-result-object v2

    invoke-virtual {v2}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v2

    new-instance v11, Landroidx/leanback/widget/ˉˆ;

    const/16 v12, 0xa

    invoke-direct {v11, v12}, Landroidx/leanback/widget/ˉˆ;-><init>(I)V

    iget-object v13, v11, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v13, Lar/tvplayer/core/domain/ʽﹳ;

    iget-object v14, v0, Lⁱי/ʼʼ;->ʽʽ:Lʽⁱ/ٴʼ;

    iget-object v14, v14, Lʽⁱ/ٴʼ;->ﹳٴ:Lʽⁱ/ʼᐧ;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v15, 0x0

    :goto_4
    iget-object v7, v14, Lʽⁱ/ʼᐧ;->ﹳٴ:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-ge v15, v7, :cond_6

    invoke-virtual {v14, v15}, Lʽⁱ/ʼᐧ;->ﹳٴ(I)I

    move-result v7

    invoke-virtual {v13, v7}, Lar/tvplayer/core/domain/ʽﹳ;->ⁱˊ(I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_6
    xor-int/lit8 v7, v3, 0x1

    const/4 v14, 0x4

    invoke-virtual {v11, v14, v7}, Landroidx/leanback/widget/ˉˆ;->ʼˎ(IZ)V

    if-eqz v4, :cond_7

    if-nez v3, :cond_7

    move v14, v8

    goto :goto_5

    :cond_7
    const/4 v14, 0x0

    :goto_5
    const/4 v15, 0x5

    invoke-virtual {v11, v15, v14}, Landroidx/leanback/widget/ˉˆ;->ʼˎ(IZ)V

    if-eqz v5, :cond_8

    if-nez v3, :cond_8

    move v14, v8

    goto :goto_6

    :cond_8
    const/4 v14, 0x0

    :goto_6
    const/4 v15, 0x6

    invoke-virtual {v11, v15, v14}, Landroidx/leanback/widget/ˉˆ;->ʼˎ(IZ)V

    if-nez v2, :cond_a

    if-nez v5, :cond_9

    if-eqz v9, :cond_9

    if-eqz v4, :cond_a

    :cond_9
    if-nez v3, :cond_a

    move v5, v8

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    :goto_7
    const/4 v14, 0x7

    invoke-virtual {v11, v14, v5}, Landroidx/leanback/widget/ˉˆ;->ʼˎ(IZ)V

    if-eqz v6, :cond_b

    if-nez v3, :cond_b

    move v5, v8

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    :goto_8
    const/16 v14, 0x8

    invoke-virtual {v11, v14, v5}, Landroidx/leanback/widget/ˉˆ;->ʼˎ(IZ)V

    if-nez v2, :cond_d

    if-nez v6, :cond_c

    if-eqz v9, :cond_d

    if-eqz v10, :cond_d

    :cond_c
    if-nez v3, :cond_d

    move v2, v8

    goto :goto_9

    :cond_d
    const/4 v2, 0x0

    :goto_9
    const/16 v5, 0x9

    invoke-virtual {v11, v5, v2}, Landroidx/leanback/widget/ˉˆ;->ʼˎ(IZ)V

    invoke-virtual {v11, v12, v7}, Landroidx/leanback/widget/ˉˆ;->ʼˎ(IZ)V

    if-eqz v4, :cond_e

    if-nez v3, :cond_e

    move v2, v8

    goto :goto_a

    :cond_e
    const/4 v2, 0x0

    :goto_a
    const/16 v5, 0xb

    invoke-virtual {v11, v5, v2}, Landroidx/leanback/widget/ˉˆ;->ʼˎ(IZ)V

    if-eqz v4, :cond_f

    if-nez v3, :cond_f

    move v7, v8

    goto :goto_b

    :cond_f
    const/4 v7, 0x0

    :goto_b
    const/16 v2, 0xc

    invoke-virtual {v11, v2, v7}, Landroidx/leanback/widget/ˉˆ;->ʼˎ(IZ)V

    new-instance v2, Lʽⁱ/ٴʼ;

    invoke-virtual {v13}, Lar/tvplayer/core/domain/ʽﹳ;->ʽ()Lʽⁱ/ʼᐧ;

    move-result-object v3

    invoke-direct {v2, v3}, Lʽⁱ/ٴʼ;-><init>(Lʽⁱ/ʼᐧ;)V

    iput-object v2, v0, Lⁱי/ʼʼ;->ʽᵔ:Lʽⁱ/ٴʼ;

    invoke-virtual {v2, v1}, Lʽⁱ/ٴʼ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Lⁱי/יـ;

    invoke-direct {v1, v0}, Lⁱי/יـ;-><init>(Lⁱי/ʼʼ;)V

    iget-object v2, v0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v1}, Lᐧˎ/ˉʿ;->ˈ(ILᐧˎ/ˆʾ;)V

    :cond_10
    return-void
.end method

.method public final ᵔⁱ()J
    .locals 4

    .prologue
    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ـʻ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v1, v0, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget-object v0, v0, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    iget-object v2, v1, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object v3, p0, Lⁱי/ʼʼ;->ˈʿ:Lʽⁱ/ˋᵔ;

    invoke-virtual {v0, v2, v3}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    iget v0, v1, Lﹳᵢ/ᵢˏ;->ⁱˊ:I

    iget v1, v1, Lﹳᵢ/ᵢˏ;->ʽ:I

    invoke-virtual {v3, v0, v1}, Lʽⁱ/ˋᵔ;->ﹳٴ(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lʽⁱ/ᵎﹶ;->ᴵʼ()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ᵢʻ(Lʽⁱ/ᵔי;)V
    .locals 7

    .prologue
    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    invoke-virtual {v0}, Lᐧˎ/ˉʿ;->ᵔᵢ()V

    iget-object v1, v0, Lᐧˎ/ˉʿ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᐧˎ/ﾞʻ;

    iget-object v4, v3, Lᐧˎ/ﾞʻ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lᐧˎ/ˉʿ;->ˑﹳ:Ljava/lang/Object;

    check-cast v4, Lᐧˎ/ٴﹶ;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lᐧˎ/ﾞʻ;->ˈ:Z

    iget-boolean v5, v3, Lᐧˎ/ﾞʻ;->ʽ:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    iput-boolean v5, v3, Lᐧˎ/ﾞʻ;->ʽ:Z

    iget-object v5, v3, Lᐧˎ/ﾞʻ;->ﹳٴ:Ljava/lang/Object;

    iget-object v6, v3, Lᐧˎ/ﾞʻ;->ⁱˊ:Lar/tvplayer/core/domain/ʽﹳ;

    invoke-virtual {v6}, Lar/tvplayer/core/domain/ʽﹳ;->ʽ()Lʽⁱ/ʼᐧ;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lᐧˎ/ٴﹶ;->ˑﹳ(Ljava/lang/Object;Lʽⁱ/ʼᐧ;)V

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final ᵢˋ()Lﹶʽ/ʾᵎ;
    .locals 2

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    new-instance v0, Lﹶʽ/ʾᵎ;

    iget-object v1, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v1, v1, Lⁱי/ᴵˑ;->ʼˎ:Lﹶʽ/ʼʼ;

    iget-object v1, v1, Lﹶʽ/ʼʼ;->ʽ:[Lﹶʽ/ˏי;

    invoke-direct {v0, v1}, Lﹶʽ/ʾᵎ;-><init>([Lﹶʽ/ˏי;)V

    return-object v0
.end method

.method public final ᵢᐧ(I)V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    iget v0, p0, Lⁱי/ʼʼ;->ʻᵎ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lⁱי/ʼʼ;->ʻᵎ:I

    iget-object v0, p0, Lⁱי/ʼʼ;->ᵔי:Lⁱי/ᴵᵔ;

    iget-object v0, v0, Lⁱי/ᴵᵔ;->ˉٴ:Lᐧˎ/ʻٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lᐧˎ/ʻٴ;->ⁱˊ()Lᐧˎ/ʽﹳ;

    move-result-object v1

    iget-object v0, v0, Lᐧˎ/ʻٴ;->ﹳٴ:Landroid/os/Handler;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iput-object v0, v1, Lᐧˎ/ʽﹳ;->ﹳٴ:Landroid/os/Message;

    invoke-virtual {v1}, Lᐧˎ/ʽﹳ;->ⁱˊ()V

    new-instance v0, Lʻʿ/ˑﹳ;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lʻʿ/ˑﹳ;-><init>(II)V

    iget-object p1, p0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lᐧˎ/ˉʿ;->ˈ(ILᐧˎ/ˆʾ;)V

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ᴵٴ()V

    invoke-virtual {p1}, Lᐧˎ/ˉʿ;->ʽ()V

    :cond_0
    return-void
.end method

.method public final ﹳᵢ()Lʽⁱ/ʼˈ;
    .locals 1

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v0, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v0, v0, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    return-object v0
.end method

.method public final ﹶʽ(Lⁱי/ᴵˑ;)I
    .locals 2

    .prologue
    iget-object v0, p1, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    invoke-virtual {v0}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lⁱי/ʼʼ;->ʽˑ:I

    return p1

    :cond_0
    iget-object v0, p1, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    iget-object p1, p1, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget-object p1, p1, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object v1, p0, Lⁱי/ʼʼ;->ˈʿ:Lʽⁱ/ˋᵔ;

    invoke-virtual {v0, p1, v1}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    move-result-object p1

    iget p1, p1, Lʽⁱ/ˋᵔ;->ʽ:I

    return p1
.end method

.method public final ﹶˎ()Lʽⁱ/ᴵᵔ;
    .locals 5

    .prologue
    invoke-virtual {p0}, Lⁱי/ʼʼ;->ﹳᵢ()Lʽⁱ/ʼˈ;

    move-result-object v0

    invoke-virtual {v0}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lⁱי/ʼʼ;->ⁱᴵ:Lʽⁱ/ᴵᵔ;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˎʾ()I

    move-result v1

    iget-object v2, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lʽⁱ/ˊˋ;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lʽⁱ/ʼˈ;->ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;

    move-result-object v0

    iget-object v0, v0, Lʽⁱ/ˊˋ;->ʽ:Lʽⁱ/ᴵˊ;

    iget-object v1, p0, Lⁱי/ʼʼ;->ⁱᴵ:Lʽⁱ/ᴵᵔ;

    invoke-virtual {v1}, Lʽⁱ/ᴵᵔ;->ﹳٴ()Lʽⁱ/ˈٴ;

    move-result-object v1

    iget-object v0, v0, Lʽⁱ/ᴵˊ;->ˈ:Lʽⁱ/ᴵᵔ;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v2, v0, Lʽⁱ/ᴵᵔ;->ʾˋ:Lʼʻ/ᵎⁱ;

    iget-object v3, v0, Lʽⁱ/ᴵᵔ;->ﾞᴵ:[B

    iget-object v4, v0, Lʽⁱ/ᴵᵔ;->ﹳٴ:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    iput-object v4, v1, Lʽⁱ/ˈٴ;->ﹳٴ:Ljava/lang/CharSequence;

    :cond_2
    iget-object v4, v0, Lʽⁱ/ᴵᵔ;->ⁱˊ:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    iput-object v4, v1, Lʽⁱ/ˈٴ;->ⁱˊ:Ljava/lang/CharSequence;

    :cond_3
    iget-object v4, v0, Lʽⁱ/ᴵᵔ;->ʽ:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    iput-object v4, v1, Lʽⁱ/ˈٴ;->ʽ:Ljava/lang/CharSequence;

    :cond_4
    iget-object v4, v0, Lʽⁱ/ᴵᵔ;->ˈ:Ljava/lang/CharSequence;

    if-eqz v4, :cond_5

    iput-object v4, v1, Lʽⁱ/ˈٴ;->ˈ:Ljava/lang/CharSequence;

    :cond_5
    iget-object v4, v0, Lʽⁱ/ᴵᵔ;->ˑﹳ:Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    iput-object v4, v1, Lʽⁱ/ˈٴ;->ˑﹳ:Ljava/lang/CharSequence;

    :cond_6
    if-eqz v3, :cond_8

    iget-object v4, v0, Lʽⁱ/ᴵᵔ;->ᵎﹶ:Ljava/lang/Integer;

    if-nez v3, :cond_7

    const/4 v3, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    :goto_0
    iput-object v3, v1, Lʽⁱ/ˈٴ;->ﾞᴵ:[B

    iput-object v4, v1, Lʽⁱ/ˈٴ;->ᵎﹶ:Ljava/lang/Integer;

    :cond_8
    iget-object v3, v0, Lʽⁱ/ᴵᵔ;->ᵔᵢ:Ljava/lang/Integer;

    if-eqz v3, :cond_9

    iput-object v3, v1, Lʽⁱ/ˈٴ;->ᵔᵢ:Ljava/lang/Integer;

    :cond_9
    iget-object v3, v0, Lʽⁱ/ᴵᵔ;->ʼˎ:Ljava/lang/Integer;

    if-eqz v3, :cond_a

    iput-object v3, v1, Lʽⁱ/ˈٴ;->ʼˎ:Ljava/lang/Integer;

    :cond_a
    iget-object v3, v0, Lʽⁱ/ᴵᵔ;->ˆʾ:Ljava/lang/Integer;

    if-eqz v3, :cond_b

    iput-object v3, v1, Lʽⁱ/ˈٴ;->ˆʾ:Ljava/lang/Integer;

    :cond_b
    iget-object v3, v0, Lʽⁱ/ᴵᵔ;->ٴﹶ:Ljava/lang/Boolean;

    if-eqz v3, :cond_c

    iput-object v3, v1, Lʽⁱ/ˈٴ;->ٴﹶ:Ljava/lang/Boolean;

    :cond_c
    iget-object v3, v0, Lʽⁱ/ᴵᵔ;->ﾞʻ:Ljava/lang/Integer;

    if-eqz v3, :cond_d

    iput-object v3, v1, Lʽⁱ/ˈٴ;->ﾞʻ:Ljava/lang/Integer;

    :cond_d
    iget-object v3, v0, Lʽⁱ/ᴵᵔ;->ˉʿ:Ljava/lang/Integer;

    if-eqz v3, :cond_e

    iput-object v3, v1, Lʽⁱ/ˈٴ;->ﾞʻ:Ljava/lang/Integer;

    :cond_e
    iget-object v3, v0, Lʽⁱ/ᴵᵔ;->ᵔʾ:Ljava/lang/Integer;

    if-eqz v3, :cond_f

    iput-object v3, v1, Lʽⁱ/ˈٴ;->ˉʿ:Ljava/lang/Integer;

    :cond_f
    iget-object v3, v0, Lʽⁱ/ᴵᵔ;->ˉˆ:Ljava/lang/Integer;

    if-eqz v3, :cond_10

    iput-object v3, v1, Lʽⁱ/ˈٴ;->ᵔʾ:Ljava/lang/Integer;

    :cond_10
    iget-object v3, v0, Lʽⁱ/ᴵᵔ;->ʼᐧ:Ljava/lang/Integer;

    if-eqz v3, :cond_11

    iput-object v3, v1, Lʽⁱ/ˈٴ;->ˉˆ:Ljava/lang/Integer;

    :cond_11
    iget-object v3, v0, Lʽⁱ/ᴵᵔ;->ᵔﹳ:Ljava/lang/Integer;

    if-eqz v3, :cond_12

    iput-object v3, v1, Lʽⁱ/ˈٴ;->ʼᐧ:Ljava/lang/Integer;

    :cond_12
    iget-object v3, v0, Lʽⁱ/ᴵᵔ;->ﹳᐧ:Ljava/lang/Integer;

    if-eqz v3, :cond_13

    iput-object v3, v1, Lʽⁱ/ˈٴ;->ᵔﹳ:Ljava/lang/Integer;

    :cond_13
    iget-object v3, v0, Lʽⁱ/ᴵᵔ;->יـ:Ljava/lang/CharSequence;

    if-eqz v3, :cond_14

    iput-object v3, v1, Lʽⁱ/ˈٴ;->ﹳᐧ:Ljava/lang/CharSequence;

    :cond_14
    iget-object v3, v0, Lʽⁱ/ᴵᵔ;->ˏי:Ljava/lang/CharSequence;

    if-eqz v3, :cond_15

    iput-object v3, v1, Lʽⁱ/ˈٴ;->יـ:Ljava/lang/CharSequence;

    :cond_15
    iget-object v3, v0, Lʽⁱ/ᴵᵔ;->ʽﹳ:Ljava/lang/CharSequence;

    if-eqz v3, :cond_16

    iput-object v3, v1, Lʽⁱ/ˈٴ;->ˏי:Ljava/lang/CharSequence;

    :cond_16
    iget-object v3, v0, Lʽⁱ/ᴵᵔ;->ʻٴ:Ljava/lang/Integer;

    if-eqz v3, :cond_17

    iput-object v3, v1, Lʽⁱ/ˈٴ;->ʽﹳ:Ljava/lang/Integer;

    :cond_17
    iget-object v3, v0, Lʽⁱ/ᴵᵔ;->ـˆ:Ljava/lang/Integer;

    if-eqz v3, :cond_18

    iput-object v3, v1, Lʽⁱ/ˈٴ;->ʻٴ:Ljava/lang/Integer;

    :cond_18
    iget-object v3, v0, Lʽⁱ/ᴵᵔ;->ʾᵎ:Ljava/lang/CharSequence;

    if-eqz v3, :cond_19

    iput-object v3, v1, Lʽⁱ/ˈٴ;->ـˆ:Ljava/lang/CharSequence;

    :cond_19
    iget-object v3, v0, Lʽⁱ/ᴵᵔ;->ʼʼ:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1a

    iput-object v3, v1, Lʽⁱ/ˈٴ;->ʾᵎ:Ljava/lang/CharSequence;

    :cond_1a
    iget-object v0, v0, Lʽⁱ/ᴵᵔ;->ᵢˏ:Ljava/lang/Integer;

    if-eqz v0, :cond_1b

    iput-object v0, v1, Lʽⁱ/ˈٴ;->ʼʼ:Ljava/lang/Integer;

    :cond_1b
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {v2}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object v0

    iput-object v0, v1, Lʽⁱ/ˈٴ;->ᵢˏ:Lʼʻ/ᵎⁱ;

    :cond_1c
    :goto_1
    new-instance v0, Lʽⁱ/ᴵᵔ;

    invoke-direct {v0, v1}, Lʽⁱ/ᴵᵔ;-><init>(Lʽⁱ/ˈٴ;)V

    return-object v0
.end method

.method public final ﾞˊ(Lʽⁱ/ˉـ;)V
    .locals 6

    .prologue
    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v0, p0, Lⁱי/ʼʼ;->ᵎⁱ:Lﹶʽ/ـˆ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˊﾞ()Lʽⁱ/ˉـ;

    move-result-object v1

    iget-boolean v2, p0, Lⁱי/ʼʼ;->ﹳﹳ:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lʽⁱ/ˉـ;->ʽﹳ:Lʼʻ/ᵔٴ;

    iput-object v2, p0, Lⁱי/ʼʼ;->ʻˋ:Lʼʻ/ᵔٴ;

    iget-object v2, p0, Lⁱי/ʼʼ;->ˑʼ:Lⁱי/ˏᵢ;

    iget-object v2, v2, Lⁱי/ˏᵢ;->ﹳٴ:Lʼʻ/ᵔٴ;

    invoke-virtual {p1}, Lʽⁱ/ˉـ;->ﹳٴ()Lʽⁱ/ᴵˑ;

    move-result-object v3

    invoke-virtual {v2}, Lʼʻ/ˈٴ;->ᵔᵢ()Lʼʻ/ٴﹳ;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lʽⁱ/ᴵˑ;->ʼˎ(IZ)Lʽⁱ/ᴵˑ;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lʽⁱ/ᴵˑ;->ﹳٴ()Lʽⁱ/ˉـ;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, p1

    :goto_1
    move-object v3, v0

    check-cast v3, Lﹶʽ/ﹳᐧ;

    invoke-virtual {v3}, Lﹶʽ/ﹳᐧ;->ˑﹳ()Lﹶʽ/ˆʾ;

    move-result-object v3

    invoke-virtual {v2, v3}, Lʽⁱ/ˉـ;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Lﹶʽ/ـˆ;->ⁱˊ(Lʽⁱ/ˉـ;)V

    :cond_2
    invoke-virtual {v1, p1}, Lʽⁱ/ˉـ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lٴˉ/ﹳٴ;

    const/16 v1, 0x14

    invoke-direct {v0, v1, p1}, Lٴˉ/ﹳٴ;-><init>(ILjava/lang/Object;)V

    iget-object p1, p0, Lⁱי/ʼʼ;->ˆﾞ:Lᐧˎ/ˉʿ;

    const/16 v1, 0x13

    invoke-virtual {p1, v1, v0}, Lᐧˎ/ˉʿ;->ᵎﹶ(ILᐧˎ/ˆʾ;)V

    :cond_3
    return-void
.end method

.method public final ﾞˋ()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ـʻ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v0, v0, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget v0, v0, Lﹳᵢ/ᵢˏ;->ⁱˊ:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final ﾞˏ()I
    .locals 1

    invoke-virtual {p0}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v0, p0, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget v0, v0, Lⁱי/ᴵˑ;->ˑﹳ:I

    return v0
.end method
