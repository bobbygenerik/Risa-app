.class public final Lﹳᵢ/ᐧﾞ;
.super Lʽⁱ/ʼˈ;
.source "SourceFile"


# static fields
.field public static final ᵔʾ:Ljava/lang/Object;


# instance fields
.field public final ʼˎ:Z

.field public final ʽ:J

.field public final ˆʾ:Z

.field public final ˈ:J

.field public final ˉʿ:Lʽⁱ/ʾᵎ;

.field public final ˑﹳ:J

.field public final ٴﹶ:Ljava/lang/Object;

.field public final ᵎﹶ:J

.field public final ᵔᵢ:Z

.field public final ⁱˊ:J

.field public final ﾞʻ:Lʽⁱ/ᴵˊ;

.field public final ﾞᴵ:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lﹳᵢ/ᐧﾞ;->ᵔʾ:Ljava/lang/Object;

    new-instance v0, Lʽⁱ/ˏי;

    invoke-direct {v0}, Lʽⁱ/ˏי;-><init>()V

    sget-object v1, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v1, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v7, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    new-instance v1, Lʽⁱ/ـˆ;

    invoke-direct {v1}, Lʽⁱ/ـˆ;-><init>()V

    sget-object v2, Lʽⁱ/ᵢˏ;->ﹳٴ:Lʽⁱ/ᵢˏ;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eqz v3, :cond_0

    new-instance v2, Lʽⁱ/ʼʼ;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v2 .. v9}, Lʽⁱ/ʼʼ;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/bumptech/glide/ʽ;Ljava/util/List;Lʼʻ/ᵎⁱ;J)V

    :cond_0
    new-instance v2, Lʽⁱ/ᴵˊ;

    invoke-virtual {v0}, Lʽⁱ/ˏי;->ﹳٴ()Lʽⁱ/ʻٴ;

    invoke-virtual {v1}, Lʽⁱ/ـˆ;->ﹳٴ()Lʽⁱ/ʾᵎ;

    sget-object v0, Lʽⁱ/ᴵᵔ;->ᴵˊ:Lʽⁱ/ᴵᵔ;

    return-void
.end method

.method public constructor <init>(JJJJJJZZZLjava/lang/Object;Lʽⁱ/ᴵˊ;Lʽⁱ/ʾᵎ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lﹳᵢ/ᐧﾞ;->ⁱˊ:J

    iput-wide p3, p0, Lﹳᵢ/ᐧﾞ;->ʽ:J

    iput-wide p5, p0, Lﹳᵢ/ᐧﾞ;->ˈ:J

    iput-wide p7, p0, Lﹳᵢ/ᐧﾞ;->ˑﹳ:J

    iput-wide p9, p0, Lﹳᵢ/ᐧﾞ;->ﾞᴵ:J

    iput-wide p11, p0, Lﹳᵢ/ᐧﾞ;->ᵎﹶ:J

    iput-boolean p13, p0, Lﹳᵢ/ᐧﾞ;->ᵔᵢ:Z

    iput-boolean p14, p0, Lﹳᵢ/ᐧﾞ;->ʼˎ:Z

    iput-boolean p15, p0, Lﹳᵢ/ᐧﾞ;->ˆʾ:Z

    move-object/from16 p1, p16

    iput-object p1, p0, Lﹳᵢ/ᐧﾞ;->ٴﹶ:Ljava/lang/Object;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p1, p17

    iput-object p1, p0, Lﹳᵢ/ᐧﾞ;->ﾞʻ:Lʽⁱ/ᴵˊ;

    move-object/from16 p1, p18

    iput-object p1, p0, Lﹳᵢ/ᐧﾞ;->ˉʿ:Lʽⁱ/ʾᵎ;

    return-void
.end method

.method public constructor <init>(JJJJZZZLjava/lang/Object;Lʽⁱ/ᴵˊ;)V
    .locals 19

    .prologue
    move-object/from16 v0, p13

    if-eqz p11, :cond_0

    iget-object v1, v0, Lʽⁱ/ᴵˊ;->ʽ:Lʽⁱ/ʾᵎ;

    :goto_0
    move-object/from16 v18, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v15, 0x0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v16, p12

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v18}, Lﹳᵢ/ᐧﾞ;-><init>(JJJJJJZZZLjava/lang/Object;Lʽⁱ/ᴵˊ;Lʽⁱ/ʾᵎ;)V

    return-void
.end method

.method public constructor <init>(JZZLʽⁱ/ᴵˊ;)V
    .locals 14

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-wide v3, p1

    move-object v0, p0

    move-wide v1, p1

    move/from16 v9, p3

    move/from16 v11, p4

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lﹳᵢ/ᐧﾞ;-><init>(JJJJZZZLjava/lang/Object;Lʽⁱ/ᴵˊ;)V

    return-void
.end method


# virtual methods
.method public final ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;
    .locals 22

    .prologue
    move-object/from16 v0, p0

    const/4 v1, 0x1

    move/from16 v2, p1

    invoke-static {v2, v1}, Lᐧˎ/ﹳٴ;->ᵎﹶ(II)V

    iget-wide v1, v0, Lﹳᵢ/ᐧﾞ;->ᵎﹶ:J

    iget-boolean v13, v0, Lﹳᵢ/ᐧﾞ;->ʼˎ:Z

    if-eqz v13, :cond_1

    iget-boolean v3, v0, Lﹳᵢ/ᐧﾞ;->ˆʾ:Z

    if-nez v3, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lﹳᵢ/ᐧﾞ;->ˑﹳ:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    :goto_0
    move-wide v15, v5

    goto :goto_1

    :cond_0
    add-long v1, v1, p3

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    move-wide v15, v1

    :goto_1
    sget-object v1, Lʽⁱ/ˊˋ;->ᵔﹳ:Ljava/lang/Object;

    const/16 v19, 0x0

    iget-wide v1, v0, Lﹳᵢ/ᐧﾞ;->ﾞᴵ:J

    iget-object v4, v0, Lﹳᵢ/ᐧﾞ;->ﾞʻ:Lʽⁱ/ᴵˊ;

    iget-object v5, v0, Lﹳᵢ/ᐧﾞ;->ٴﹶ:Ljava/lang/Object;

    iget-wide v6, v0, Lﹳᵢ/ᐧﾞ;->ⁱˊ:J

    iget-wide v8, v0, Lﹳᵢ/ᐧﾞ;->ʽ:J

    iget-boolean v12, v0, Lﹳᵢ/ᐧﾞ;->ᵔᵢ:Z

    iget-object v14, v0, Lﹳᵢ/ᐧﾞ;->ˉʿ:Lʽⁱ/ʾᵎ;

    iget-wide v10, v0, Lﹳᵢ/ᐧﾞ;->ˑﹳ:J

    move-object/from16 v3, p2

    move-wide/from16 v20, v1

    move-wide/from16 v17, v10

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v3 .. v21}, Lʽⁱ/ˊˋ;->ⁱˊ(Lʽⁱ/ᴵˊ;Ljava/lang/Object;JJJZZLʽⁱ/ʾᵎ;JJIJ)V

    return-object p2
.end method

.method public final ˉˆ()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ᵔᵢ()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ⁱˊ(Ljava/lang/Object;)I
    .locals 1

    .prologue
    sget-object v0, Lﹳᵢ/ᐧﾞ;->ᵔʾ:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final ﾞʻ(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lᐧˎ/ﹳٴ;->ᵎﹶ(II)V

    sget-object p1, Lﹳᵢ/ᐧﾞ;->ᵔʾ:Ljava/lang/Object;

    return-object p1
.end method

.method public final ﾞᴵ(ILʽⁱ/ˋᵔ;Z)Lʽⁱ/ˋᵔ;
    .locals 10

    .prologue
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lᐧˎ/ﹳٴ;->ᵎﹶ(II)V

    if-eqz p3, :cond_0

    sget-object p1, Lﹳᵢ/ᐧﾞ;->ᵔʾ:Ljava/lang/Object;

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-wide v0, p0, Lﹳᵢ/ᐧﾞ;->ﾞᴵ:J

    neg-long v6, v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lʽⁱ/ʽ;->ʽ:Lʽⁱ/ʽ;

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-wide v4, p0, Lﹳᵢ/ᐧﾞ;->ˈ:J

    move-object v0, p2

    invoke-virtual/range {v0 .. v9}, Lʽⁱ/ˋᵔ;->ᵔᵢ(Ljava/lang/Object;Ljava/lang/Object;IJJLʽⁱ/ʽ;Z)V

    return-object v0
.end method
