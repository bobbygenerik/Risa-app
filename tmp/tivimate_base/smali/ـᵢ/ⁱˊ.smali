.class public final Lـᵢ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ʾᵎ;
.implements Lﹳᵢ/ʿ;
.implements Lᵢˋ/ᵎﹶ;


# static fields
.field public static final ʿᵢ:Ljava/util/regex/Pattern;

.field public static final ᵎᵔ:Ljava/util/regex/Pattern;


# instance fields
.field public ʼˈ:[Lـᵢ/ﾞʻ;

.field public final ʽʽ:Lـˊ/ᵔﹳ;

.field public final ʾˋ:I

.field public ʿ:J

.field public final ˆﾞ:Lـᵢ/ˉˆ;

.field public final ˈʿ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

.field public final ˈٴ:Lⁱᴵ/ﾞʻ;

.field public ˈⁱ:I

.field public ˉـ:Z

.field public final ˉٴ:Lᵔⁱ/ˉˆ;

.field public final ˊʻ:Lˏˆ/ﹳٴ;

.field public ˊˋ:[Lᵢˋ/ᵔᵢ;

.field public ˋᵔ:Lﹳᵢ/ـˆ;

.field public final ˑٴ:Lⁱᴵ/ʼˎ;

.field public ـˏ:Lﹳᵢ/ﾞʻ;

.field public final ٴʼ:Lﹳᵢ/ʻᵎ;

.field public final ٴᵢ:J

.field public final ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

.field public ᴵˑ:Ljava/util/List;

.field public final ᴵᵔ:Lʻᴵ/יـ;

.field public final ᵎˊ:[Lـᵢ/ﹳٴ;

.field public final ᵎⁱ:Lᵔⁱ/ˑﹳ;

.field public final ᵔי:Lᵔﹶ/ˈٴ;

.field public final ᵔٴ:Ljava/util/IdentityHashMap;

.field public ﹳـ:Lٴᴵ/ʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CC([1-4])=(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lـᵢ/ⁱˊ;->ʿᵢ:Ljava/util/regex/Pattern;

    const-string v0, "([1-4])=lang:(\\w+)(,.+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lـᵢ/ⁱˊ;->ᵎᵔ:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(ILٴᴵ/ʽ;Lˏˆ/ﹳٴ;ILcom/google/android/gms/internal/play_billing/ʽﹳ;Lـˊ/ᵔﹳ;Lⁱᴵ/ﾞʻ;Lⁱᴵ/ʼˎ;Lʻᴵ/יـ;Lcom/google/android/gms/internal/play_billing/ʽﹳ;JLᵔⁱ/ˉˆ;Lᵔⁱ/ˑﹳ;Lᵔﹶ/ˈٴ;Lـᵢ/ﾞᴵ;Lʻʿ/יـ;)V
    .locals 22

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p14

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move/from16 v6, p1

    iput v6, v0, Lـᵢ/ⁱˊ;->ʾˋ:I

    iput-object v1, v0, Lـᵢ/ⁱˊ;->ﹳـ:Lٴᴵ/ʽ;

    move-object/from16 v6, p3

    iput-object v6, v0, Lـᵢ/ⁱˊ;->ˊʻ:Lˏˆ/ﹳٴ;

    iput v2, v0, Lـᵢ/ⁱˊ;->ˈⁱ:I

    iput-object v3, v0, Lـᵢ/ⁱˊ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    move-object/from16 v6, p6

    iput-object v6, v0, Lـᵢ/ⁱˊ;->ʽʽ:Lـˊ/ᵔﹳ;

    iput-object v4, v0, Lـᵢ/ⁱˊ;->ˈٴ:Lⁱᴵ/ﾞʻ;

    move-object/from16 v6, p8

    iput-object v6, v0, Lـᵢ/ⁱˊ;->ˑٴ:Lⁱᴵ/ʼˎ;

    move-object/from16 v6, p9

    iput-object v6, v0, Lـᵢ/ⁱˊ;->ᴵᵔ:Lʻᴵ/יـ;

    move-object/from16 v6, p10

    iput-object v6, v0, Lـᵢ/ⁱˊ;->ˈʿ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    move-wide/from16 v6, p11

    iput-wide v6, v0, Lـᵢ/ⁱˊ;->ٴᵢ:J

    move-object/from16 v6, p13

    iput-object v6, v0, Lـᵢ/ⁱˊ;->ˉٴ:Lᵔⁱ/ˉˆ;

    iput-object v5, v0, Lـᵢ/ⁱˊ;->ᵎⁱ:Lᵔⁱ/ˑﹳ;

    move-object/from16 v6, p15

    iput-object v6, v0, Lـᵢ/ⁱˊ;->ᵔי:Lᵔﹶ/ˈٴ;

    const/4 v7, 0x1

    iput-boolean v7, v0, Lـᵢ/ⁱˊ;->ˉـ:Z

    new-instance v8, Lـᵢ/ˉˆ;

    move-object/from16 v9, p16

    invoke-direct {v8, v1, v9, v5}, Lـᵢ/ˉˆ;-><init>(Lٴᴵ/ʽ;Lـᵢ/ﾞᴵ;Lᵔⁱ/ˑﹳ;)V

    iput-object v8, v0, Lـᵢ/ⁱˊ;->ˆﾞ:Lـᵢ/ˉˆ;

    const/4 v5, 0x0

    new-array v8, v5, [Lᵢˋ/ᵔᵢ;

    iput-object v8, v0, Lـᵢ/ⁱˊ;->ˊˋ:[Lᵢˋ/ᵔᵢ;

    new-array v8, v5, [Lـᵢ/ﾞʻ;

    iput-object v8, v0, Lـᵢ/ⁱˊ;->ʼˈ:[Lـᵢ/ﾞʻ;

    new-instance v8, Ljava/util/IdentityHashMap;

    invoke-direct {v8}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v8, v0, Lـᵢ/ⁱˊ;->ᵔٴ:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lﹳᵢ/ﾞʻ;

    sget-object v8, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v8, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    invoke-direct {v6, v8, v8}, Lﹳᵢ/ﾞʻ;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v6, v0, Lـᵢ/ⁱˊ;->ـˏ:Lﹳᵢ/ﾞʻ;

    invoke-virtual {v1, v2}, Lٴᴵ/ʽ;->ⁱˊ(I)Lٴᴵ/ᵔᵢ;

    move-result-object v1

    iget-object v2, v1, Lٴᴵ/ᵔᵢ;->ˈ:Ljava/util/List;

    iput-object v2, v0, Lـᵢ/ⁱˊ;->ᴵˑ:Ljava/util/List;

    iget-object v1, v1, Lٴᴵ/ᵔᵢ;->ʽ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-instance v8, Ljava/util/HashMap;

    invoke-static {v6}, Lʼʻ/ﹳᐧ;->ﹳٴ(I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10, v6}, Landroid/util/SparseArray;-><init>(I)V

    move v11, v5

    :goto_0
    if-ge v11, v6, :cond_0

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lٴᴵ/ﹳٴ;

    iget-wide v12, v12, Lٴᴵ/ﹳٴ;->ﹳٴ:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v5

    :goto_1
    const/4 v12, -0x1

    if-ge v11, v6, :cond_6

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lٴᴵ/ﹳٴ;

    iget-object v14, v13, Lٴᴵ/ﹳٴ;->ˑﹳ:Ljava/util/List;

    iget-object v15, v13, Lٴᴵ/ﹳٴ;->ﾞᴵ:Ljava/util/List;

    move/from16 p1, v7

    const-string v7, "http://dashif.org/guidelines/trickmode"

    invoke-static {v7, v14}, Lـᵢ/ⁱˊ;->ʽ(Ljava/lang/String;Ljava/util/List;)Lٴᴵ/ﾞᴵ;

    move-result-object v14

    if-nez v14, :cond_1

    invoke-static {v7, v15}, Lـᵢ/ⁱˊ;->ʽ(Ljava/lang/String;Ljava/util/List;)Lٴᴵ/ﾞᴵ;

    move-result-object v14

    :cond_1
    if-eqz v14, :cond_2

    iget-object v7, v14, Lٴᴵ/ﾞᴵ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lٴᴵ/ﹳٴ;

    invoke-static {v13, v14}, Lـᵢ/ⁱˊ;->ﹳٴ(Lٴᴵ/ﹳٴ;Lٴᴵ/ﹳٴ;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2

    :cond_2
    move v7, v11

    :goto_2
    if-ne v7, v11, :cond_4

    const-string v14, "urn:mpeg:dash:adaptation-set-switching:2016"

    invoke-static {v14, v15}, Lـᵢ/ⁱˊ;->ʽ(Ljava/lang/String;Ljava/util/List;)Lٴᴵ/ﾞᴵ;

    move-result-object v14

    if-eqz v14, :cond_4

    iget-object v14, v14, Lٴᴵ/ﾞᴵ;->ⁱˊ:Ljava/lang/String;

    sget-object v15, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    const-string v15, ","

    invoke-virtual {v14, v15, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    array-length v14, v12

    move v15, v5

    :goto_3
    if-ge v15, v14, :cond_4

    aget-object v16, v12, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    move-object/from16 p2, v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lٴᴵ/ﹳٴ;

    invoke-static {v13, v5}, Lـᵢ/ⁱˊ;->ﹳٴ(Lٴᴵ/ﹳٴ;Lٴᴵ/ﹳٴ;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v7, v5

    :cond_3
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    if-eq v7, v11, :cond_5

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v10, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v11, v11, 0x1

    move/from16 v7, p1

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_6
    move/from16 p1, v7

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v6, v5, [[I

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v5, :cond_7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-static {v8}, Lˈˊ/ˉˆ;->ˊʻ(Ljava/util/Collection;)[I

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v8}, Ljava/util/Arrays;->sort([I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    new-array v7, v5, [Z

    new-array v8, v5, [[Lʽⁱ/ﹳᐧ;

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_5
    if-ge v9, v5, :cond_10

    aget-object v11, v6, v9

    array-length v13, v11

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v13, :cond_a

    aget v15, v11, v14

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lٴᴵ/ﹳٴ;

    iget-object v15, v15, Lٴᴵ/ﹳٴ;->ʽ:Ljava/util/List;

    move-object/from16 v16, v6

    const/4 v12, 0x0

    :goto_7
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    if-ge v12, v6, :cond_9

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lٴᴵ/ˉʿ;

    iget-object v6, v6, Lٴᴵ/ˉʿ;->ˈٴ:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    aput-boolean p1, v7, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, v16

    const/4 v12, -0x1

    goto :goto_6

    :cond_a
    move-object/from16 v16, v6

    :goto_8
    aget-object v6, v16, v9

    array-length v11, v6

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v11, :cond_e

    aget v13, v6, v12

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lٴᴵ/ﹳٴ;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lٴᴵ/ﹳٴ;

    iget-object v13, v13, Lٴᴵ/ﹳٴ;->ˈ:Ljava/util/List;

    move-object/from16 p4, v6

    const/4 v15, 0x0

    :goto_a
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    if-ge v15, v6, :cond_d

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lٴᴵ/ﾞᴵ;

    move-object/from16 v17, v7

    const-string v7, "urn:scte:dash:cc:cea-608:2015"

    move-object/from16 p6, v8

    iget-object v8, v6, Lٴᴵ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v7, Lʽⁱ/ᵔﹳ;

    invoke-direct {v7}, Lʽⁱ/ᵔﹳ;-><init>()V

    const-string v8, "application/cea-608"

    invoke-static {v8}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v11, v14, Lٴᴵ/ﹳٴ;->ﹳٴ:J

    const-string v13, ":cea608"

    invoke-static {v8, v11, v12, v13}, Landroid/support/v4/media/session/ﹳٴ;->ˉʿ(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    new-instance v8, Lʽⁱ/ﹳᐧ;

    invoke-direct {v8, v7}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    sget-object v7, Lـᵢ/ⁱˊ;->ʿᵢ:Ljava/util/regex/Pattern;

    invoke-static {v6, v7, v8}, Lـᵢ/ⁱˊ;->ᵔﹳ(Lٴᴵ/ﾞᴵ;Ljava/util/regex/Pattern;Lʽⁱ/ﹳᐧ;)[Lʽⁱ/ﹳᐧ;

    move-result-object v6

    goto :goto_b

    :cond_b
    const-string v7, "urn:scte:dash:cc:cea-708:2015"

    iget-object v8, v6, Lٴᴵ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    new-instance v7, Lʽⁱ/ᵔﹳ;

    invoke-direct {v7}, Lʽⁱ/ᵔﹳ;-><init>()V

    const-string v8, "application/cea-708"

    invoke-static {v8}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v11, v14, Lٴᴵ/ﹳٴ;->ﹳٴ:J

    const-string v13, ":cea708"

    invoke-static {v8, v11, v12, v13}, Landroid/support/v4/media/session/ﹳٴ;->ˉʿ(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    new-instance v8, Lʽⁱ/ﹳᐧ;

    invoke-direct {v8, v7}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    sget-object v7, Lـᵢ/ⁱˊ;->ᵎᵔ:Ljava/util/regex/Pattern;

    invoke-static {v6, v7, v8}, Lـᵢ/ⁱˊ;->ᵔﹳ(Lٴᴵ/ﾞᴵ;Ljava/util/regex/Pattern;Lʽⁱ/ﹳᐧ;)[Lʽⁱ/ﹳᐧ;

    move-result-object v6

    goto :goto_b

    :cond_c
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, p6

    move-object/from16 v7, v17

    goto :goto_a

    :cond_d
    move-object/from16 v17, v7

    move-object/from16 p6, v8

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, p4

    goto/16 :goto_9

    :cond_e
    move-object/from16 v17, v7

    move-object/from16 p6, v8

    const/4 v6, 0x0

    new-array v7, v6, [Lʽⁱ/ﹳᐧ;

    move-object v6, v7

    :goto_b
    aput-object v6, p6, v9

    array-length v6, v6

    if-eqz v6, :cond_f

    add-int/lit8 v10, v10, 0x1

    :cond_f
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v8, p6

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    const/4 v12, -0x1

    goto/16 :goto_5

    :cond_10
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 p6, v8

    add-int/2addr v10, v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v10

    new-array v7, v6, [Lʽⁱ/ـˏ;

    new-array v6, v6, [Lـᵢ/ﹳٴ;

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_c
    const-string v10, "application/x-emsg"

    if-ge v9, v5, :cond_18

    aget-object v11, v16, v9

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    array-length v13, v11

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v13, :cond_11

    aget v15, v11, v14

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lٴᴵ/ﹳٴ;

    iget-object v15, v15, Lٴᴵ/ﹳٴ;->ʽ:Ljava/util/List;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    :cond_11
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v14, v13, [Lʽⁱ/ﹳᐧ;

    const/4 v15, 0x0

    :goto_e
    if-ge v15, v13, :cond_12

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 p4, v5

    move-object/from16 v5, v18

    check-cast v5, Lٴᴵ/ˉʿ;

    iget-object v5, v5, Lٴᴵ/ˉʿ;->ʾˋ:Lʽⁱ/ﹳᐧ;

    move/from16 p12, v8

    invoke-virtual {v5}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v8

    invoke-interface {v4, v5}, Lⁱᴵ/ﾞʻ;->ᵎﹶ(Lʽⁱ/ﹳᐧ;)I

    move-result v5

    iput v5, v8, Lʽⁱ/ᵔﹳ;->ᵔٴ:I

    new-instance v5, Lʽⁱ/ﹳᐧ;

    invoke-direct {v5, v8}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    aput-object v5, v14, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, p4

    move/from16 v8, p12

    goto :goto_e

    :cond_12
    move/from16 p4, v5

    move/from16 p12, v8

    const/4 v5, 0x0

    aget v8, v11, v5

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lٴᴵ/ﹳٴ;

    iget-wide v12, v5, Lٴᴵ/ﹳٴ;->ﹳٴ:J

    const-wide/16 v18, -0x1

    cmp-long v8, v12, v18

    if-eqz v8, :cond_13

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_f

    :cond_13
    const-string v8, "unset:"

    invoke-static {v9, v8}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_f
    add-int/lit8 v12, p12, 0x1

    aget-boolean v13, v17, v9

    if-eqz v13, :cond_14

    add-int/lit8 v13, p12, 0x2

    goto :goto_10

    :cond_14
    move v13, v12

    const/4 v12, -0x1

    :goto_10
    aget-object v15, p6, v9

    array-length v15, v15

    if-eqz v15, :cond_15

    add-int/lit8 v15, v13, 0x1

    goto :goto_11

    :cond_15
    move v15, v13

    const/4 v13, -0x1

    :goto_11
    invoke-static {v3, v14}, Lـᵢ/ⁱˊ;->ᵔᵢ(Lcom/google/android/gms/internal/play_billing/ʽﹳ;[Lʽⁱ/ﹳᐧ;)V

    move-object/from16 v18, v1

    new-instance v1, Lʽⁱ/ـˏ;

    invoke-direct {v1, v8, v14}, Lʽⁱ/ـˏ;-><init>(Ljava/lang/String;[Lʽⁱ/ﹳᐧ;)V

    aput-object v1, v7, p12

    iget v1, v5, Lٴᴵ/ﹳٴ;->ⁱˊ:I

    new-instance v5, Lـᵢ/ﹳٴ;

    sget-object v14, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v14, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    const/16 v19, 0x0

    const/16 v20, -0x1

    move/from16 p9, v1

    move-object/from16 p8, v5

    move-object/from16 p11, v11

    move/from16 p13, v12

    move/from16 p14, v13

    move-object/from16 p16, v14

    move/from16 p10, v19

    move/from16 p15, v20

    invoke-direct/range {p8 .. p16}, Lـᵢ/ﹳٴ;-><init>(II[IIIIILʼʻ/ᵎⁱ;)V

    move-object/from16 v11, p8

    move-object/from16 v5, p11

    move/from16 v1, p12

    aput-object v11, v6, v1

    const/4 v11, -0x1

    if-eq v12, v11, :cond_16

    const-string v11, ":emsg"

    invoke-static {v8, v11}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move/from16 p12, v1

    new-instance v1, Lʽⁱ/ᵔﹳ;

    invoke-direct {v1}, Lʽⁱ/ᵔﹳ;-><init>()V

    iput-object v11, v1, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v10}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    new-instance v10, Lʽⁱ/ﹳᐧ;

    invoke-direct {v10, v1}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    new-instance v1, Lʽⁱ/ـˏ;

    move/from16 v4, p1

    move-object/from16 p11, v5

    new-array v5, v4, [Lʽⁱ/ﹳᐧ;

    const/4 v4, 0x0

    aput-object v10, v5, v4

    invoke-direct {v1, v11, v5}, Lʽⁱ/ـˏ;-><init>(Ljava/lang/String;[Lʽⁱ/ﹳᐧ;)V

    aput-object v1, v7, v12

    new-instance v1, Lـᵢ/ﹳٴ;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v10, 0x5

    const/4 v11, 0x1

    const/16 v19, -0x1

    move-object/from16 p8, v1

    move/from16 p14, v4

    move/from16 p15, v5

    move/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p16, v14

    move/from16 p13, v19

    invoke-direct/range {p8 .. p16}, Lـᵢ/ﹳٴ;-><init>(II[IIIIILʼʻ/ᵎⁱ;)V

    move-object/from16 v4, p8

    move-object/from16 v5, p11

    move/from16 v1, p12

    aput-object v4, v6, v12

    const/4 v11, -0x1

    :cond_16
    if-eq v13, v11, :cond_17

    const-string v4, ":cc"

    invoke-static {v8, v4}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aget-object v8, p6, v9

    invoke-static {v8}, Lʼʻ/ᵎⁱ;->ﾞʻ([Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v8

    new-instance v10, Lـᵢ/ﹳٴ;

    const/4 v12, -0x1

    const/4 v14, -0x1

    const/16 v19, 0x3

    const/16 v20, 0x1

    const/16 v21, -0x1

    move/from16 p12, v1

    move-object/from16 p11, v5

    move-object/from16 p16, v8

    move-object/from16 p8, v10

    move/from16 p14, v12

    move/from16 p15, v14

    move/from16 p9, v19

    move/from16 p10, v20

    move/from16 p13, v21

    invoke-direct/range {p8 .. p16}, Lـᵢ/ﹳٴ;-><init>(II[IIIIILʼʻ/ᵎⁱ;)V

    move-object/from16 v1, p8

    aput-object v1, v6, v13

    aget-object v1, p6, v9

    invoke-static {v3, v1}, Lـᵢ/ⁱˊ;->ᵔᵢ(Lcom/google/android/gms/internal/play_billing/ʽﹳ;[Lʽⁱ/ﹳᐧ;)V

    new-instance v1, Lʽⁱ/ـˏ;

    aget-object v5, p6, v9

    invoke-direct {v1, v4, v5}, Lʽⁱ/ـˏ;-><init>(Ljava/lang/String;[Lʽⁱ/ﹳᐧ;)V

    aput-object v1, v7, v13

    :cond_17
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, p4

    move-object/from16 v4, p7

    move v8, v15

    move-object/from16 v1, v18

    const/16 p1, 0x1

    goto/16 :goto_c

    :cond_18
    move v1, v8

    const/4 v1, 0x0

    :goto_12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_19

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lٴᴵ/ᵎﹶ;

    new-instance v4, Lʽⁱ/ᵔﹳ;

    invoke-direct {v4}, Lʽⁱ/ᵔﹳ;-><init>()V

    invoke-virtual {v3}, Lٴᴵ/ᵎﹶ;->ﹳٴ()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v10}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    new-instance v5, Lʽⁱ/ﹳᐧ;

    invoke-direct {v5, v4}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lٴᴵ/ᵎﹶ;->ﹳٴ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lʽⁱ/ـˏ;

    const/4 v9, 0x1

    new-array v11, v9, [Lʽⁱ/ﹳᐧ;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-direct {v4, v3, v11}, Lʽⁱ/ـˏ;-><init>(Ljava/lang/String;[Lʽⁱ/ﹳᐧ;)V

    aput-object v4, v7, v8

    add-int/lit8 v3, v8, 0x1

    new-instance v4, Lـᵢ/ﹳٴ;

    new-array v5, v12, [I

    sget-object v11, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v11, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    const/4 v13, 0x5

    const/4 v14, 0x2

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    move/from16 p14, v1

    move-object/from16 p7, v4

    move-object/from16 p10, v5

    move-object/from16 p15, v11

    move/from16 p8, v13

    move/from16 p9, v14

    move/from16 p11, v15

    move/from16 p12, v16

    move/from16 p13, v17

    invoke-direct/range {p7 .. p15}, Lـᵢ/ﹳٴ;-><init>(II[IIIIILʼʻ/ᵎⁱ;)V

    aput-object v4, v6, v8

    add-int/lit8 v1, v1, 0x1

    move v8, v3

    goto :goto_12

    :cond_19
    new-instance v1, Lﹳᵢ/ʻᵎ;

    invoke-direct {v1, v7}, Lﹳᵢ/ʻᵎ;-><init>([Lʽⁱ/ـˏ;)V

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lﹳᵢ/ʻᵎ;

    iput-object v2, v0, Lـᵢ/ⁱˊ;->ٴʼ:Lﹳᵢ/ʻᵎ;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lـᵢ/ﹳٴ;

    iput-object v1, v0, Lـᵢ/ⁱˊ;->ᵎˊ:[Lـᵢ/ﹳٴ;

    return-void
.end method

.method public static ʽ(Ljava/lang/String;Ljava/util/List;)Lٴᴵ/ﾞᴵ;
    .locals 3

    .prologue
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lٴᴵ/ﾞᴵ;

    iget-object v2, v1, Lٴᴵ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ᵔᵢ(Lcom/google/android/gms/internal/play_billing/ʽﹳ;[Lʽⁱ/ﹳᐧ;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lar/tvplayer/core/domain/ʽﹳ;

    iget-boolean v3, v2, Lar/tvplayer/core/domain/ʽﹳ;->ʾˋ:Z

    if-eqz v3, :cond_1

    iget-object v3, v2, Lar/tvplayer/core/domain/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Lˋⁱ/ﾞᴵ;

    invoke-virtual {v3, v1}, Lˋⁱ/ﾞᴵ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v3

    iget-object v4, v1, Lʽⁱ/ﹳᐧ;->ٴﹶ:Ljava/lang/String;

    const-string v5, "application/x-media3-cues"

    invoke-static {v5}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iget-object v2, v2, Lar/tvplayer/core/domain/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lˋⁱ/ﾞᴵ;

    invoke-virtual {v2, v1}, Lˋⁱ/ﾞᴵ;->ᵎﹶ(Lʽⁱ/ﹳᐧ;)I

    move-result v2

    iput v2, v3, Lʽⁱ/ᵔﹳ;->ᵎˊ:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_0

    const-string v1, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lʽⁱ/ᵔﹳ;->ˆʾ:Ljava/lang/String;

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v3, Lʽⁱ/ᵔﹳ;->ﹳᐧ:J

    new-instance v1, Lʽⁱ/ﹳᐧ;

    invoke-direct {v1, v3}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    :cond_1
    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static ᵔﹳ(Lٴᴵ/ﾞᴵ;Ljava/util/regex/Pattern;Lʽⁱ/ﹳᐧ;)[Lʽⁱ/ﹳᐧ;
    .locals 9

    .prologue
    iget-object p0, p0, Lٴᴵ/ﾞᴵ;->ⁱˊ:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    new-array p0, v1, [Lʽⁱ/ﹳᐧ;

    aput-object p2, p0, v0

    return-object p0

    :cond_0
    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    const/4 v2, -0x1

    const-string v3, ";"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    new-array v2, v2, [Lʽⁱ/ﹳᐧ;

    move v3, v0

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {p1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1

    new-array p0, v1, [Lʽⁱ/ﹳᐧ;

    aput-object p2, p0, v0

    return-object p0

    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p2, Lʽⁱ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    iput v5, v6, Lʽⁱ/ᵔﹳ;->ٴʼ:I

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lʽⁱ/ᵔﹳ;->ˈ:Ljava/lang/String;

    new-instance v4, Lʽⁱ/ﹳᐧ;

    invoke-direct {v4, v6}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static ﹳٴ(Lٴᴵ/ﹳٴ;Lٴᴵ/ﹳٴ;)Z
    .locals 3

    .prologue
    iget v0, p0, Lٴᴵ/ﹳٴ;->ⁱˊ:I

    iget-object p0, p0, Lٴᴵ/ﹳٴ;->ʽ:Ljava/util/List;

    iget v1, p1, Lٴᴵ/ﹳٴ;->ⁱˊ:I

    iget-object p1, p1, Lٴᴵ/ﹳٴ;->ʽ:Ljava/util/List;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lٴᴵ/ˉʿ;

    iget-object p0, p0, Lٴᴵ/ˉʿ;->ʾˋ:Lʽⁱ/ﹳᐧ;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lٴᴵ/ˉʿ;

    iget-object p1, p1, Lٴᴵ/ˉʿ;->ʾˋ:Lʽⁱ/ﹳᐧ;

    iget v0, p0, Lʽⁱ/ﹳᐧ;->ﾞᴵ:I

    and-int/lit16 v0, v0, -0x4001

    iget v1, p1, Lʽⁱ/ﹳᐧ;->ﾞᴵ:I

    and-int/lit16 v1, v1, -0x4001

    iget-object p0, p0, Lʽⁱ/ﹳᐧ;->ˈ:Ljava/lang/String;

    iget-object p1, p1, Lʽⁱ/ﹳᐧ;->ˈ:Ljava/lang/String;

    invoke-static {p0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return v2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final ʻٴ(J)V
    .locals 19

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lـᵢ/ⁱˊ;->ˊˋ:[Lᵢˋ/ᵔᵢ;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_6

    aget-object v5, v1, v4

    iget-object v6, v5, Lᵢˋ/ᵔᵢ;->ᵎⁱ:Lᵔⁱ/ˉʿ;

    invoke-virtual {v6}, Lᵔⁱ/ˉʿ;->ˈ()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v0, Lـᵢ/ⁱˊ;->ﹳـ:Lٴᴵ/ʽ;

    iget v7, v0, Lـᵢ/ⁱˊ;->ˈⁱ:I

    invoke-virtual {v6, v7}, Lٴᴵ/ʽ;->ˈ(I)J

    move-result-wide v10

    iget-object v6, v5, Lᵢˋ/ᵔᵢ;->ˆﾞ:Lﹳᵢ/ᴵˑ;

    iget-object v7, v5, Lᵢˋ/ᵔᵢ;->ᵎⁱ:Lᵔⁱ/ˉʿ;

    invoke-virtual {v7}, Lᵔⁱ/ˉʿ;->ˈ()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    invoke-virtual {v5}, Lᵢˋ/ᵔᵢ;->ᵢˏ()Z

    move-result v7

    if-nez v7, :cond_5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v10, v7

    if-eqz v9, :cond_5

    iget-object v9, v5, Lᵢˋ/ᵔᵢ;->ᵎˊ:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v5}, Lᵢˋ/ᵔᵢ;->יـ()Lᵢˋ/ﹳٴ;

    move-result-object v9

    iget-wide v12, v9, Lᵢˋ/ﹳٴ;->ᵔי:J

    cmp-long v7, v12, v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v12, v9, Lᵢˋ/ˑﹳ;->ˉٴ:J

    :goto_1
    cmp-long v7, v12, v10

    if-gtz v7, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v6}, Lﹳᵢ/ᴵˑ;->ᵔﹳ()J

    move-result-wide v12

    cmp-long v7, v12, v10

    if-gtz v7, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Lﹳᵢ/ᴵˑ;->ﹳᐧ()J

    move-result-wide v7

    const-wide/16 v14, 0x1

    add-long/2addr v7, v14

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lﹳᵢ/ᴵˑ;->ﾞʻ(J)V

    iget-object v6, v5, Lᵢˋ/ᵔᵢ;->ᵔٴ:[Lﹳᵢ/ᴵˑ;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    invoke-virtual {v9}, Lﹳᵢ/ᴵˑ;->ﹳᐧ()J

    move-result-wide v16

    move/from16 v18, v4

    add-long v3, v16, v14

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Lﹳᵢ/ᴵˑ;->ﾞʻ(J)V

    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v18

    goto :goto_2

    :cond_4
    move/from16 v18, v4

    iget-object v8, v5, Lᵢˋ/ᵔᵢ;->ٴᵢ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v9, v5, Lᵢˋ/ᵔᵢ;->ʾˋ:I

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˊʻ(IJJ)V

    goto :goto_4

    :cond_5
    :goto_3
    move/from16 v18, v4

    :goto_4
    add-int/lit8 v4, v18, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object v1, v0, Lـᵢ/ⁱˊ;->ـˏ:Lﹳᵢ/ﾞʻ;

    move-wide/from16 v2, p1

    invoke-virtual {v1, v2, v3}, Lﹳᵢ/ﾞʻ;->ʻٴ(J)V

    return-void
.end method

.method public final ʼˎ(Lﹳᵢ/ـˆ;J)V
    .locals 0

    iput-object p1, p0, Lـᵢ/ⁱˊ;->ˋᵔ:Lﹳᵢ/ـˆ;

    invoke-interface {p1, p0}, Lﹳᵢ/ـˆ;->ˑﹳ(Lﹳᵢ/ʾᵎ;)V

    return-void
.end method

.method public final ʼᐧ()V
    .locals 1

    iget-object v0, p0, Lـᵢ/ⁱˊ;->ˉٴ:Lᵔⁱ/ˉˆ;

    invoke-interface {v0}, Lᵔⁱ/ˉˆ;->ʽ()V

    return-void
.end method

.method public final ˆʾ([Lﹶʽ/ˏי;[Z[Lﹳᵢ/ˉـ;[ZJ)J
    .locals 35

    .prologue
    move-object/from16 v5, p0

    move-object/from16 v14, p1

    array-length v0, v14

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v14

    const/4 v4, -0x1

    if-ge v2, v3, :cond_1

    aget-object v3, v14, v2

    if-eqz v3, :cond_0

    iget-object v4, v5, Lـᵢ/ⁱˊ;->ٴʼ:Lﹳᵢ/ʻᵎ;

    invoke-interface {v3}, Lﹶʽ/ˏי;->ˆʾ()Lʽⁱ/ـˏ;

    move-result-object v3

    invoke-virtual {v4, v3}, Lﹳᵢ/ʻᵎ;->ⁱˊ(Lʽⁱ/ـˏ;)I

    move-result v3

    aput v3, v0, v2

    goto :goto_1

    :cond_0
    aput v4, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_2
    array-length v3, v14

    const/16 v16, 0x0

    if-ge v2, v3, :cond_6

    aget-object v3, v14, v2

    if-eqz v3, :cond_2

    aget-boolean v3, p2, v2

    if-nez v3, :cond_5

    :cond_2
    aget-object v3, p3, v2

    instance-of v6, v3, Lᵢˋ/ᵔᵢ;

    if-eqz v6, :cond_3

    check-cast v3, Lᵢˋ/ᵔᵢ;

    invoke-virtual {v3, v5}, Lᵢˋ/ᵔᵢ;->ʽʽ(Lـᵢ/ⁱˊ;)V

    goto :goto_3

    :cond_3
    instance-of v6, v3, Lᵢˋ/ﾞᴵ;

    if-eqz v6, :cond_4

    check-cast v3, Lᵢˋ/ﾞᴵ;

    iget-object v6, v3, Lᵢˋ/ﾞᴵ;->ᴵᵔ:Lᵢˋ/ᵔᵢ;

    iget-object v7, v6, Lᵢˋ/ᵔᵢ;->ˈٴ:[Z

    iget v3, v3, Lᵢˋ/ﾞᴵ;->ʽʽ:I

    aget-boolean v7, v7, v3

    invoke-static {v7}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object v6, v6, Lᵢˋ/ᵔᵢ;->ˈٴ:[Z

    aput-boolean v1, v6, v3

    :cond_4
    :goto_3
    aput-object v16, p3, v2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_4
    array-length v3, v14

    const/4 v6, 0x1

    if-ge v2, v3, :cond_c

    aget-object v3, p3, v2

    instance-of v7, v3, Lﹳᵢ/ˉˆ;

    if-nez v7, :cond_7

    instance-of v3, v3, Lᵢˋ/ﾞᴵ;

    if-eqz v3, :cond_b

    :cond_7
    invoke-virtual {v5, v0, v2}, Lـᵢ/ⁱˊ;->ᵎﹶ([II)I

    move-result v3

    if-ne v3, v4, :cond_8

    aget-object v3, p3, v2

    instance-of v3, v3, Lﹳᵢ/ˉˆ;

    goto :goto_6

    :cond_8
    aget-object v7, p3, v2

    instance-of v8, v7, Lᵢˋ/ﾞᴵ;

    if-eqz v8, :cond_9

    check-cast v7, Lᵢˋ/ﾞᴵ;

    iget-object v7, v7, Lᵢˋ/ﾞᴵ;->ʾˋ:Lᵢˋ/ᵔᵢ;

    aget-object v3, p3, v3

    if-ne v7, v3, :cond_9

    goto :goto_5

    :cond_9
    move v6, v1

    :goto_5
    move v3, v6

    :goto_6
    if-nez v3, :cond_b

    aget-object v3, p3, v2

    instance-of v6, v3, Lᵢˋ/ﾞᴵ;

    if-eqz v6, :cond_a

    check-cast v3, Lᵢˋ/ﾞᴵ;

    iget-object v6, v3, Lᵢˋ/ﾞᴵ;->ᴵᵔ:Lᵢˋ/ᵔᵢ;

    iget-object v7, v6, Lᵢˋ/ᵔᵢ;->ˈٴ:[Z

    iget v3, v3, Lᵢˋ/ﾞᴵ;->ʽʽ:I

    aget-boolean v7, v7, v3

    invoke-static {v7}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object v6, v6, Lᵢˋ/ᵔᵢ;->ˈٴ:[Z

    aput-boolean v1, v6, v3

    :cond_a
    aput-object v16, p3, v2

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    move v2, v1

    :goto_7
    array-length v3, v14

    if-ge v2, v3, :cond_18

    aget-object v24, v14, v2

    if-nez v24, :cond_d

    move-object/from16 v34, v0

    move/from16 v33, v1

    move/from16 v17, v2

    move-wide/from16 v0, p5

    goto/16 :goto_e

    :cond_d
    aget-object v3, p3, v2

    if-nez v3, :cond_16

    aput-boolean v6, p4, v2

    aget v3, v0, v2

    iget-object v7, v5, Lـᵢ/ⁱˊ;->ᵎˊ:[Lـᵢ/ﹳٴ;

    aget-object v3, v7, v3

    iget v7, v3, Lـᵢ/ﹳٴ;->ʽ:I

    if-nez v7, :cond_15

    iget v7, v3, Lـᵢ/ﹳٴ;->ﾞᴵ:I

    if-eq v7, v4, :cond_e

    move/from16 v30, v6

    goto :goto_8

    :cond_e
    move/from16 v30, v1

    :goto_8
    if-eqz v30, :cond_f

    iget-object v8, v5, Lـᵢ/ⁱˊ;->ٴʼ:Lﹳᵢ/ʻᵎ;

    invoke-virtual {v8, v7}, Lﹳᵢ/ʻᵎ;->ﹳٴ(I)Lʽⁱ/ـˏ;

    move-result-object v7

    move v8, v6

    goto :goto_9

    :cond_f
    move v8, v1

    move-object/from16 v7, v16

    :goto_9
    iget v9, v3, Lـᵢ/ﹳٴ;->ᵎﹶ:I

    if-eq v9, v4, :cond_10

    iget-object v10, v5, Lـᵢ/ⁱˊ;->ᵎˊ:[Lـᵢ/ﹳٴ;

    aget-object v9, v10, v9

    iget-object v9, v9, Lـᵢ/ﹳٴ;->ᵔᵢ:Lʼʻ/ᵎⁱ;

    goto :goto_a

    :cond_10
    sget-object v9, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v9, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    :goto_a
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    add-int/2addr v10, v8

    new-array v8, v10, [Lʽⁱ/ﹳᐧ;

    new-array v10, v10, [I

    if-eqz v30, :cond_11

    iget-object v7, v7, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    aget-object v7, v7, v1

    aput-object v7, v8, v1

    const/4 v7, 0x5

    aput v7, v10, v1

    move v7, v6

    goto :goto_b

    :cond_11
    move v7, v1

    :goto_b
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v12, v1

    :goto_c
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v13

    if-ge v12, v13, :cond_12

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lʽⁱ/ﹳᐧ;

    aput-object v13, v8, v7

    const/16 v17, 0x3

    aput v17, v10, v7

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v7, v6

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_12
    iget-object v7, v5, Lـᵢ/ⁱˊ;->ﹳـ:Lٴᴵ/ʽ;

    iget-boolean v7, v7, Lٴᴵ/ʽ;->ˈ:Z

    if-eqz v7, :cond_13

    if-eqz v30, :cond_13

    iget-object v7, v5, Lـᵢ/ⁱˊ;->ˆﾞ:Lـᵢ/ˉˆ;

    new-instance v9, Lـᵢ/ᵔʾ;

    iget-object v12, v7, Lـᵢ/ˉˆ;->ʾˋ:Lᵔⁱ/ˑﹳ;

    invoke-direct {v9, v7, v12}, Lـᵢ/ᵔʾ;-><init>(Lـᵢ/ˉˆ;Lᵔⁱ/ˑﹳ;)V

    move-object/from16 v32, v9

    goto :goto_d

    :cond_13
    move-object/from16 v32, v16

    :goto_d
    iget-object v7, v5, Lـᵢ/ⁱˊ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v9, v5, Lـᵢ/ⁱˊ;->ˉٴ:Lᵔⁱ/ˉˆ;

    iget-object v12, v5, Lـᵢ/ⁱˊ;->ﹳـ:Lٴᴵ/ʽ;

    iget-object v13, v5, Lـᵢ/ⁱˊ;->ˊʻ:Lˏˆ/ﹳٴ;

    iget v1, v5, Lـᵢ/ⁱˊ;->ˈⁱ:I

    iget-object v4, v3, Lـᵢ/ﹳٴ;->ﹳٴ:[I

    iget v6, v3, Lـᵢ/ﹳٴ;->ⁱˊ:I

    move-object/from16 v34, v0

    move/from16 v22, v1

    iget-wide v0, v5, Lـᵢ/ⁱˊ;->ٴᵢ:J

    move-wide/from16 v27, v0

    iget-object v0, v5, Lـᵢ/ⁱˊ;->ʽʽ:Lـˊ/ᵔﹳ;

    iget-object v1, v7, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lـˊ/ˑﹳ;

    invoke-interface {v1}, Lـˊ/ˑﹳ;->ˆʾ()Lـˊ/ﾞᴵ;

    move-result-object v1

    if-eqz v0, :cond_14

    invoke-interface {v1, v0}, Lـˊ/ﾞᴵ;->ˉʿ(Lـˊ/ᵔﹳ;)V

    :cond_14
    new-instance v17, Lـᵢ/ٴﹶ;

    iget-object v0, v7, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lar/tvplayer/core/domain/ʽﹳ;

    iget v0, v7, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    move/from16 v29, v0

    move-object/from16 v26, v1

    move-object/from16 v23, v4

    move/from16 v25, v6

    move-object/from16 v19, v9

    move-object/from16 v31, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    invoke-direct/range {v17 .. v32}, Lـᵢ/ٴﹶ;-><init>(Lar/tvplayer/core/domain/ʽﹳ;Lᵔⁱ/ˉˆ;Lٴᴵ/ʽ;Lˏˆ/ﹳٴ;I[ILﹶʽ/ˏי;ILـˊ/ﾞᴵ;JIZLjava/util/ArrayList;Lـᵢ/ᵔʾ;)V

    new-instance v0, Lᵢˋ/ᵔᵢ;

    iget v1, v3, Lـᵢ/ﹳٴ;->ⁱˊ:I

    iget-object v6, v5, Lـᵢ/ⁱˊ;->ᵎⁱ:Lᵔⁱ/ˑﹳ;

    iget-object v9, v5, Lـᵢ/ⁱˊ;->ˈٴ:Lⁱᴵ/ﾞʻ;

    move v3, v2

    move-object v2, v10

    iget-object v10, v5, Lـᵢ/ⁱˊ;->ˑٴ:Lⁱᴵ/ʼˎ;

    iget-object v11, v5, Lـᵢ/ⁱˊ;->ᴵᵔ:Lʻᴵ/יـ;

    iget-object v12, v5, Lـᵢ/ⁱˊ;->ˈʿ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-boolean v13, v5, Lـᵢ/ⁱˊ;->ˉـ:Z

    move-object/from16 v4, v17

    move-object/from16 v15, v32

    const/16 v33, 0x0

    move/from16 v17, v3

    move-object v3, v8

    move-wide/from16 v7, p5

    invoke-direct/range {v0 .. v13}, Lᵢˋ/ᵔᵢ;-><init>(I[I[Lʽⁱ/ﹳᐧ;Lᵢˋ/ʼˎ;Lﹳᵢ/ʿ;Lᵔⁱ/ˑﹳ;JLⁱᴵ/ﾞʻ;Lⁱᴵ/ʼˎ;Lʻᴵ/יـ;Lcom/google/android/gms/internal/play_billing/ʽﹳ;Z)V

    move-object v2, v0

    move-wide v0, v7

    monitor-enter p0

    :try_start_0
    iget-object v3, v5, Lـᵢ/ⁱˊ;->ᵔٴ:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v2, v15}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    aput-object v2, p3, v17

    goto :goto_e

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_15
    move-object/from16 v34, v0

    move/from16 v33, v1

    move/from16 v17, v2

    move-object/from16 v2, v24

    move-wide/from16 v0, p5

    const/4 v4, 0x2

    if-ne v7, v4, :cond_17

    iget-object v4, v5, Lـᵢ/ⁱˊ;->ᴵˑ:Ljava/util/List;

    iget v3, v3, Lـᵢ/ﹳٴ;->ˈ:I

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lٴᴵ/ᵎﹶ;

    invoke-interface {v2}, Lﹶʽ/ˏי;->ˆʾ()Lʽⁱ/ـˏ;

    move-result-object v2

    iget-object v2, v2, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    aget-object v2, v2, v33

    new-instance v4, Lـᵢ/ﾞʻ;

    iget-object v6, v5, Lـᵢ/ⁱˊ;->ﹳـ:Lٴᴵ/ʽ;

    iget-boolean v6, v6, Lٴᴵ/ʽ;->ˈ:Z

    invoke-direct {v4, v3, v2, v6}, Lـᵢ/ﾞʻ;-><init>(Lٴᴵ/ᵎﹶ;Lʽⁱ/ﹳᐧ;Z)V

    aput-object v4, p3, v17

    goto :goto_e

    :cond_16
    move-object/from16 v34, v0

    move/from16 v33, v1

    move/from16 v17, v2

    move-object/from16 v2, v24

    move-wide/from16 v0, p5

    instance-of v4, v3, Lᵢˋ/ᵔᵢ;

    if-eqz v4, :cond_17

    check-cast v3, Lᵢˋ/ᵔᵢ;

    iget-object v3, v3, Lᵢˋ/ᵔᵢ;->ᴵᵔ:Lᵢˋ/ʼˎ;

    check-cast v3, Lـᵢ/ٴﹶ;

    iput-object v2, v3, Lـᵢ/ٴﹶ;->ˆʾ:Lﹶʽ/ˏי;

    :cond_17
    :goto_e
    add-int/lit8 v2, v17, 0x1

    move/from16 v1, v33

    move-object/from16 v0, v34

    const/4 v4, -0x1

    const/4 v6, 0x1

    goto/16 :goto_7

    :cond_18
    move-object/from16 v34, v0

    move/from16 v33, v1

    move-wide/from16 v0, p5

    move/from16 v2, v33

    :goto_f
    array-length v3, v14

    if-ge v2, v3, :cond_1e

    aget-object v3, p3, v2

    if-nez v3, :cond_1d

    aget-object v3, v14, v2

    if-eqz v3, :cond_1d

    aget v3, v34, v2

    iget-object v4, v5, Lـᵢ/ⁱˊ;->ᵎˊ:[Lـᵢ/ﹳٴ;

    aget-object v3, v4, v3

    iget v4, v3, Lـᵢ/ﹳٴ;->ʽ:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1c

    move-object/from16 v4, v34

    invoke-virtual {v5, v4, v2}, Lـᵢ/ⁱˊ;->ᵎﹶ([II)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_19

    new-instance v3, Lﹳᵢ/ˉˆ;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, p3, v2

    goto :goto_12

    :cond_19
    aget-object v7, p3, v7

    check-cast v7, Lᵢˋ/ᵔᵢ;

    iget v3, v3, Lـᵢ/ﹳٴ;->ⁱˊ:I

    iget-object v9, v7, Lᵢˋ/ᵔᵢ;->ˈٴ:[Z

    iget-object v10, v7, Lᵢˋ/ᵔᵢ;->ᵔٴ:[Lﹳᵢ/ᴵˑ;

    move/from16 v11, v33

    :goto_10
    array-length v12, v10

    if-ge v11, v12, :cond_1b

    iget-object v12, v7, Lᵢˋ/ᵔᵢ;->ᴵˊ:[I

    aget v12, v12, v11

    if-ne v12, v3, :cond_1a

    aget-boolean v3, v9, v11

    xor-int/2addr v3, v6

    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    aput-boolean v6, v9, v11

    aget-object v3, v10, v11

    invoke-virtual {v3, v6, v0, v1}, Lﹳᵢ/ᴵˑ;->ˉٴ(ZJ)Z

    new-instance v3, Lᵢˋ/ﾞᴵ;

    aget-object v9, v10, v11

    invoke-direct {v3, v7, v7, v9, v11}, Lᵢˋ/ﾞᴵ;-><init>(Lᵢˋ/ᵔᵢ;Lᵢˋ/ᵔᵢ;Lﹳᵢ/ᴵˑ;I)V

    aput-object v3, p3, v2

    goto :goto_12

    :cond_1a
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1c
    move-object/from16 v4, v34

    :goto_11
    const/4 v8, -0x1

    goto :goto_12

    :cond_1d
    move-object/from16 v4, v34

    const/4 v6, 0x1

    goto :goto_11

    :goto_12
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v34, v4

    goto :goto_f

    :cond_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v15, p3

    array-length v4, v15

    move/from16 v6, v33

    :goto_13
    if-ge v6, v4, :cond_21

    aget-object v7, v15, v6

    instance-of v8, v7, Lᵢˋ/ᵔᵢ;

    if-eqz v8, :cond_1f

    check-cast v7, Lᵢˋ/ᵔᵢ;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1f
    instance-of v8, v7, Lـᵢ/ﾞʻ;

    if-eqz v8, :cond_20

    check-cast v7, Lـᵢ/ﾞʻ;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    :goto_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_21
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lᵢˋ/ᵔᵢ;

    iput-object v4, v5, Lـᵢ/ⁱˊ;->ˊˋ:[Lᵢˋ/ᵔᵢ;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lـᵢ/ﾞʻ;

    iput-object v4, v5, Lـᵢ/ⁱˊ;->ʼˈ:[Lـᵢ/ﾞʻ;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v3, v5, Lـᵢ/ⁱˊ;->ᵔי:Lᵔﹶ/ˈٴ;

    new-instance v4, Lיٴ/ˈ;

    const/16 v6, 0x1b

    invoke-direct {v4, v6}, Lיٴ/ˈ;-><init>(I)V

    invoke-static {v2, v4}, Lʼʻ/ﹳᐧ;->ʽﹳ(Ljava/util/List;Lˆʽ/ˑﹳ;)Ljava/util/AbstractList;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lﹳᵢ/ﾞʻ;

    invoke-direct {v3, v2, v4}, Lﹳᵢ/ﾞʻ;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v3, v5, Lـᵢ/ⁱˊ;->ـˏ:Lﹳᵢ/ﾞʻ;

    iget-boolean v2, v5, Lـᵢ/ⁱˊ;->ˉـ:Z

    if-eqz v2, :cond_22

    move/from16 v2, v33

    iput-boolean v2, v5, Lـᵢ/ⁱˊ;->ˉـ:Z

    iput-wide v0, v5, Lـᵢ/ⁱˊ;->ʿ:J

    :cond_22
    return-wide v0
.end method

.method public final ˈ()Z
    .locals 1

    iget-object v0, p0, Lـᵢ/ⁱˊ;->ـˏ:Lﹳᵢ/ﾞʻ;

    invoke-virtual {v0}, Lﹳᵢ/ﾞʻ;->ˈ()Z

    move-result v0

    return v0
.end method

.method public final ˉʿ()J
    .locals 6

    .prologue
    iget-object v0, p0, Lـᵢ/ⁱˊ;->ˊˋ:[Lᵢˋ/ᵔᵢ;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-boolean v5, v4, Lᵢˋ/ᵔᵢ;->ˉـ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, v4, Lᵢˋ/ᵔᵢ;->ˉـ:Z

    if-eqz v5, :cond_0

    iget-wide v0, p0, Lـᵢ/ⁱˊ;->ʿ:J

    return-wide v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, v4, Lᵢˋ/ᵔᵢ;->ˉـ:Z

    throw v0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final ˉˆ()J
    .locals 2

    iget-object v0, p0, Lـᵢ/ⁱˊ;->ـˏ:Lﹳᵢ/ﾞʻ;

    invoke-virtual {v0}, Lﹳᵢ/ﾞʻ;->ˉˆ()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ˏי(J)V
    .locals 4

    .prologue
    iget-object v0, p0, Lـᵢ/ⁱˊ;->ˊˋ:[Lᵢˋ/ᵔᵢ;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Lᵢˋ/ᵔᵢ;->ˏי(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ٴﹶ(Lⁱי/ˉٴ;)Z
    .locals 1

    iget-object v0, p0, Lـᵢ/ⁱˊ;->ـˏ:Lﹳᵢ/ﾞʻ;

    invoke-virtual {v0, p1}, Lﹳᵢ/ﾞʻ;->ٴﹶ(Lⁱי/ˉٴ;)Z

    move-result p1

    return p1
.end method

.method public final ᵎﹶ([II)I
    .locals 4

    .prologue
    aget p2, p1, p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lـᵢ/ⁱˊ;->ᵎˊ:[Lـᵢ/ﹳٴ;

    aget-object p2, v1, p2

    iget p2, p2, Lـᵢ/ﹳٴ;->ˑﹳ:I

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget v3, p1, v2

    if-ne v3, p2, :cond_1

    aget-object v3, v1, v3

    iget v3, v3, Lـᵢ/ﹳٴ;->ʽ:I

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public final ᵔʾ()Lﹳᵢ/ʻᵎ;
    .locals 1

    iget-object v0, p0, Lـᵢ/ⁱˊ;->ٴʼ:Lﹳᵢ/ʻᵎ;

    return-object v0
.end method

.method public final ⁱˊ(JLⁱי/ᴵʼ;)J
    .locals 6

    .prologue
    iget-object v0, p0, Lـᵢ/ⁱˊ;->ˊˋ:[Lᵢˋ/ᵔᵢ;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lᵢˋ/ᵔᵢ;->ʾˋ:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v0, v3, Lᵢˋ/ᵔᵢ;->ᴵᵔ:Lᵢˋ/ʼˎ;

    invoke-interface {v0, p1, p2, p3}, Lᵢˋ/ʼˎ;->ⁱˊ(JLⁱי/ᴵʼ;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public final ﹳᐧ(J)J
    .locals 6

    .prologue
    iget-object v0, p0, Lـᵢ/ⁱˊ;->ˊˋ:[Lᵢˋ/ᵔᵢ;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4, p1, p2}, Lᵢˋ/ᵔᵢ;->ˈٴ(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lـᵢ/ⁱˊ;->ʼˈ:[Lـᵢ/ﾞʻ;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, v3, Lـᵢ/ﾞʻ;->ʽʽ:[J

    const/4 v5, 0x1

    invoke-static {v4, p1, p2, v5}, Lᐧˎ/ʼʼ;->ﹳٴ([JJZ)I

    move-result v4

    iput v4, v3, Lـᵢ/ﾞʻ;->ٴᵢ:I

    iget-boolean v5, v3, Lـᵢ/ﾞʻ;->ˈٴ:Z

    if-eqz v5, :cond_1

    iget-object v5, v3, Lـᵢ/ﾞʻ;->ʽʽ:[J

    array-length v5, v5

    if-ne v4, v5, :cond_1

    move-wide v4, p1

    goto :goto_2

    :cond_1
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    iput-wide v4, v3, Lـᵢ/ﾞʻ;->ˉٴ:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-wide p1
.end method

.method public final ﾞʻ()J
    .locals 2

    iget-object v0, p0, Lـᵢ/ⁱˊ;->ـˏ:Lﹳᵢ/ﾞʻ;

    invoke-virtual {v0}, Lﹳᵢ/ﾞʻ;->ﾞʻ()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ﾞᴵ(Lﹳᵢ/ʿᵢ;)V
    .locals 0

    iget-object p1, p0, Lـᵢ/ⁱˊ;->ˋᵔ:Lﹳᵢ/ـˆ;

    invoke-interface {p1, p0}, Lﹳᵢ/ʿ;->ﾞᴵ(Lﹳᵢ/ʿᵢ;)V

    return-void
.end method
