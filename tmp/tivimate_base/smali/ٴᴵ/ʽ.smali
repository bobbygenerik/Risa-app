.class public final Lٴᴵ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﾞˋ/ﹳٴ;


# instance fields
.field public final ʼˎ:Lˈـ/ʾˋ;

.field public final ʽ:J

.field public final ˆʾ:Lʽⁱ/ـˆ;

.field public final ˈ:Z

.field public final ˉʿ:Ljava/util/List;

.field public final ˑﹳ:J

.field public final ٴﹶ:Landroid/net/Uri;

.field public final ᵎﹶ:J

.field public final ᵔᵢ:J

.field public final ⁱˊ:J

.field public final ﹳٴ:J

.field public final ﾞʻ:Lٴᴵ/ʼˎ;

.field public final ﾞᴵ:J


# direct methods
.method public constructor <init>(JJJZJJJJLٴᴵ/ʼˎ;Lˈـ/ʾˋ;Lʽⁱ/ـˆ;Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lٴᴵ/ʽ;->ﹳٴ:J

    iput-wide p3, p0, Lٴᴵ/ʽ;->ⁱˊ:J

    iput-wide p5, p0, Lٴᴵ/ʽ;->ʽ:J

    iput-boolean p7, p0, Lٴᴵ/ʽ;->ˈ:Z

    iput-wide p8, p0, Lٴᴵ/ʽ;->ˑﹳ:J

    iput-wide p10, p0, Lٴᴵ/ʽ;->ﾞᴵ:J

    iput-wide p12, p0, Lٴᴵ/ʽ;->ᵎﹶ:J

    iput-wide p14, p0, Lٴᴵ/ʽ;->ᵔᵢ:J

    move-object/from16 p1, p16

    iput-object p1, p0, Lٴᴵ/ʽ;->ﾞʻ:Lٴᴵ/ʼˎ;

    move-object/from16 p1, p17

    iput-object p1, p0, Lٴᴵ/ʽ;->ʼˎ:Lˈـ/ʾˋ;

    move-object/from16 p1, p19

    iput-object p1, p0, Lٴᴵ/ʽ;->ٴﹶ:Landroid/net/Uri;

    move-object/from16 p1, p18

    iput-object p1, p0, Lٴᴵ/ʽ;->ˆʾ:Lʽⁱ/ـˆ;

    move-object/from16 p1, p20

    iput-object p1, p0, Lٴᴵ/ʽ;->ˉʿ:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final ʽ(I)J
    .locals 6

    .prologue
    iget-object v0, p0, Lٴᴵ/ʽ;->ˉʿ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    iget-wide v1, p0, Lٴᴵ/ʽ;->ⁱˊ:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-wide v3

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lٴᴵ/ᵔᵢ;

    iget-wide v3, p1, Lٴᴵ/ᵔᵢ;->ⁱˊ:J

    :goto_0
    sub-long/2addr v1, v3

    return-wide v1

    :cond_1
    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lٴᴵ/ᵔᵢ;

    iget-wide v1, v1, Lٴᴵ/ᵔᵢ;->ⁱˊ:J

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lٴᴵ/ᵔᵢ;

    iget-wide v3, p1, Lٴᴵ/ᵔᵢ;->ⁱˊ:J

    goto :goto_0
.end method

.method public final ˈ(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lٴᴵ/ʽ;->ʽ(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final ⁱˊ(I)Lٴᴵ/ᵔᵢ;
    .locals 1

    iget-object v0, p0, Lٴᴵ/ʽ;->ˉʿ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lٴᴵ/ᵔᵢ;

    return-object p1
.end method

.method public final ﹳٴ(Ljava/util/List;)Ljava/lang/Object;
    .locals 26

    .prologue
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedList;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v2, Lʽⁱ/ˈʿ;

    invoke-direct {v2}, Lʽⁱ/ˈʿ;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lٴᴵ/ʽ;->ˉʿ:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v5, v6, :cond_5

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lʽⁱ/ˈʿ;

    iget v6, v6, Lʽⁱ/ˈʿ;->ʾˋ:I

    if-eq v6, v5, :cond_0

    invoke-virtual {v0, v5}, Lٴᴵ/ʽ;->ʽ(I)J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-eqz v6, :cond_3

    add-long/2addr v3, v9

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0, v5}, Lٴᴵ/ʽ;->ⁱˊ(I)Lٴᴵ/ᵔᵢ;

    move-result-object v6

    iget-object v9, v6, Lٴᴵ/ᵔᵢ;->ʽ:Ljava/util/List;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lʽⁱ/ˈʿ;

    iget v10, v7, Lʽⁱ/ˈʿ;->ʾˋ:I

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iget v8, v7, Lʽⁱ/ˈʿ;->ᴵˊ:I

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lٴᴵ/ﹳٴ;

    iget-object v12, v11, Lٴᴵ/ﹳٴ;->ʽ:Ljava/util/List;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    iget v7, v7, Lʽⁱ/ˈʿ;->ʽʽ:I

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lٴᴵ/ˉʿ;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lʽⁱ/ˈʿ;

    iget v14, v7, Lʽⁱ/ˈʿ;->ʾˋ:I

    if-ne v14, v10, :cond_2

    iget v14, v7, Lʽⁱ/ˈʿ;->ᴵˊ:I

    if-eq v14, v8, :cond_1

    :cond_2
    new-instance v16, Lٴᴵ/ﹳٴ;

    move-wide/from16 v24, v3

    iget-wide v3, v11, Lٴᴵ/ﹳٴ;->ﹳٴ:J

    iget v8, v11, Lٴᴵ/ﹳٴ;->ⁱˊ:I

    iget-object v12, v11, Lٴᴵ/ﹳٴ;->ˈ:Ljava/util/List;

    iget-object v14, v11, Lٴᴵ/ﹳٴ;->ˑﹳ:Ljava/util/List;

    iget-object v11, v11, Lٴᴵ/ﹳٴ;->ﾞᴵ:Ljava/util/List;

    move-wide/from16 v17, v3

    move/from16 v19, v8

    move-object/from16 v23, v11

    move-object/from16 v21, v12

    move-object/from16 v20, v13

    move-object/from16 v22, v14

    invoke-direct/range {v16 .. v23}, Lٴᴵ/ﹳٴ;-><init>(JILjava/util/ArrayList;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v3, v16

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v7, Lʽⁱ/ˈʿ;->ʾˋ:I

    if-eq v3, v10, :cond_4

    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    new-instance v11, Lٴᴵ/ᵔᵢ;

    iget-object v12, v6, Lٴᴵ/ᵔᵢ;->ﹳٴ:Ljava/lang/String;

    iget-wide v3, v6, Lٴᴵ/ᵔᵢ;->ⁱˊ:J

    sub-long v13, v3, v24

    iget-object v3, v6, Lٴᴵ/ᵔᵢ;->ˈ:Ljava/util/List;

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v16}, Lٴᴵ/ᵔᵢ;-><init>(Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/List;)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v3, v24

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    move-wide/from16 v3, v24

    goto :goto_1

    :cond_5
    move-wide/from16 v24, v3

    iget-wide v3, v0, Lٴᴵ/ʽ;->ⁱˊ:J

    cmp-long v1, v3, v7

    if-eqz v1, :cond_6

    sub-long v7, v3, v24

    :cond_6
    move-wide v6, v7

    new-instance v3, Lٴᴵ/ʽ;

    iget-object v1, v0, Lٴᴵ/ʽ;->ˆʾ:Lʽⁱ/ـˆ;

    iget-object v4, v0, Lٴᴵ/ʽ;->ٴﹶ:Landroid/net/Uri;

    move-object/from16 v22, v4

    iget-wide v4, v0, Lٴᴵ/ʽ;->ﹳٴ:J

    iget-wide v8, v0, Lٴᴵ/ʽ;->ʽ:J

    iget-boolean v10, v0, Lٴᴵ/ʽ;->ˈ:Z

    iget-wide v11, v0, Lٴᴵ/ʽ;->ˑﹳ:J

    iget-wide v13, v0, Lٴᴵ/ʽ;->ﾞᴵ:J

    move-object/from16 v21, v1

    move-object/from16 v23, v2

    iget-wide v1, v0, Lٴᴵ/ʽ;->ᵎﹶ:J

    move-wide v15, v1

    iget-wide v1, v0, Lٴᴵ/ʽ;->ᵔᵢ:J

    move-wide/from16 v17, v1

    iget-object v1, v0, Lٴᴵ/ʽ;->ﾞʻ:Lٴᴵ/ʼˎ;

    iget-object v2, v0, Lٴᴵ/ʽ;->ʼˎ:Lˈـ/ʾˋ;

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    invoke-direct/range {v3 .. v23}, Lٴᴵ/ʽ;-><init>(JJJZJJJJLٴᴵ/ʼˎ;Lˈـ/ʾˋ;Lʽⁱ/ـˆ;Landroid/net/Uri;Ljava/util/ArrayList;)V

    return-object v3
.end method
