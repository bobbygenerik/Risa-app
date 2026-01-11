.class public final Lˉʼ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Z

.field public final ʽ:Ljava/lang/String;

.field public final ˆʾ:Lˉʼ/ᵔᵢ;

.field public final ˈ:I

.field public final ˑﹳ:Ljava/lang/Class;

.field public final ٴﹶ:Z

.field public final ᵎﹶ:Z

.field public final ᵔᵢ:[Ljava/lang/Class;

.field public final ⁱˊ:[Lˉʼ/ˈ;

.field public final ﹳٴ:Ljava/lang/reflect/Method;

.field public final ﾞᴵ:Lˉʼ/ˑﹳ;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 20

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0xa

    new-array v3, v2, [[Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "handler"

    aput-object v7, v5, v6

    const-class v8, Ljava/lang/reflect/Method;

    const/4 v9, 0x1

    aput-object v8, v5, v9

    aput-object v5, v3, v6

    new-array v5, v4, [Ljava/lang/Object;

    const-string v8, "priority"

    aput-object v8, v5, v6

    const-class v10, Ljava/lang/Integer;

    aput-object v10, v5, v9

    aput-object v5, v3, v9

    new-array v5, v4, [Ljava/lang/Object;

    const-string v10, "invocation"

    aput-object v10, v5, v6

    const-class v11, Ljava/lang/Class;

    aput-object v11, v5, v9

    aput-object v5, v3, v4

    new-array v5, v4, [Ljava/lang/Object;

    const-string v11, "filter"

    aput-object v11, v5, v6

    const-class v12, [Lˉʼ/ˈ;

    aput-object v12, v5, v9

    const/4 v12, 0x3

    aput-object v5, v3, v12

    new-array v5, v4, [Ljava/lang/Object;

    const-string v12, "condition"

    aput-object v12, v5, v6

    const-class v13, Ljava/lang/String;

    aput-object v13, v5, v9

    const/4 v13, 0x4

    aput-object v5, v3, v13

    new-array v5, v4, [Ljava/lang/Object;

    const-string v13, "envelope"

    aput-object v13, v5, v6

    const-class v14, Ljava/lang/Boolean;

    aput-object v14, v5, v9

    const/4 v15, 0x5

    aput-object v5, v3, v15

    new-array v5, v4, [Ljava/lang/Object;

    const-string v15, "messages"

    aput-object v15, v5, v6

    const-class v16, [Ljava/lang/Class;

    aput-object v16, v5, v9

    const/16 v16, 0x6

    aput-object v5, v3, v16

    new-array v5, v4, [Ljava/lang/Object;

    move/from16 v16, v6

    const-string v6, "synchronized"

    aput-object v6, v5, v16

    aput-object v14, v5, v9

    const/16 v17, 0x7

    aput-object v5, v3, v17

    new-array v5, v4, [Ljava/lang/Object;

    move/from16 v17, v9

    const-string v9, "listener"

    aput-object v9, v5, v16

    const-class v18, Lˉʼ/ᵔᵢ;

    aput-object v18, v5, v17

    const/16 v18, 0x8

    aput-object v5, v3, v18

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "subtypes"

    aput-object v5, v4, v16

    aput-object v14, v4, v17

    const/16 v14, 0x9

    aput-object v4, v3, v14

    move/from16 v4, v16

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v14, v3, v4

    aget-object v2, v14, v16

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    aget-object v2, v14, v17

    check-cast v2, Ljava/lang/Class;

    move-object/from16 v19, v3

    aget-object v3, v14, v16

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, v19

    const/16 v2, 0xa

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Property "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v14, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " was expected to be not null and of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v14, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " but was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v14, v16

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    iput-object v2, v0, Lˉʼ/ᵎﹶ;->ﹳٴ:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lˉʼ/ˈ;

    check-cast v2, [Lˉʼ/ˈ;

    iput-object v2, v0, Lˉʼ/ᵎﹶ;->ⁱˊ:[Lˉʼ/ˈ;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lˉʼ/ᵎﹶ;->ʽ:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lˉʼ/ᵎﹶ;->ˈ:I

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    iput-object v2, v0, Lˉʼ/ᵎﹶ;->ˑﹳ:Ljava/lang/Class;

    const-string v2, "invocationMode"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˉʼ/ˑﹳ;

    iput-object v2, v0, Lˉʼ/ᵎﹶ;->ﾞᴵ:Lˉʼ/ˑﹳ;

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lˉʼ/ᵎﹶ;->ᵎﹶ:Z

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lˉʼ/ᵎﹶ;->ʼˎ:Z

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˉʼ/ᵔᵢ;

    iput-object v2, v0, Lˉʼ/ᵎﹶ;->ˆʾ:Lˉʼ/ᵔᵢ;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lˉʼ/ᵎﹶ;->ٴﹶ:Z

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    iput-object v1, v0, Lˉʼ/ᵎﹶ;->ᵔᵢ:[Ljava/lang/Class;

    return-void
.end method
