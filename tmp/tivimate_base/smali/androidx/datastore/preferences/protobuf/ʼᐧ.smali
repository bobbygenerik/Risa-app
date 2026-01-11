.class public abstract Landroidx/datastore/preferences/protobuf/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Landroidx/datastore/preferences/protobuf/ˉˆ;

.field public static final ﹳٴ:Landroidx/datastore/preferences/protobuf/ˉˆ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroidx/datastore/preferences/protobuf/ˉˆ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/protobuf/ʼᐧ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˉˆ;

    sget-object v0, Landroidx/datastore/preferences/protobuf/ˑٴ;->ʽ:Landroidx/datastore/preferences/protobuf/ˑٴ;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "androidx.datastore.preferences.protobuf.ExtensionSchemaFull"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/ˉˆ;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    sput-object v0, Landroidx/datastore/preferences/protobuf/ʼᐧ;->ⁱˊ:Landroidx/datastore/preferences/protobuf/ˉˆ;

    return-void
.end method
