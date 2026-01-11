.class public abstract Landroidx/datastore/preferences/protobuf/ᴵʼ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﹳٴ:Lsun/misc/Unsafe;


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﹳٴ:Lsun/misc/Unsafe;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/reflect/Field;)J
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﹳٴ:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final ʼᐧ(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﹳٴ:Lsun/misc/Unsafe;

    invoke-virtual {v0, p3, p1, p2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public abstract ʽ(JLjava/lang/Object;)Z
.end method

.method public abstract ˆʾ(Ljava/lang/Object;JZ)V
.end method

.method public abstract ˈ(JLjava/lang/Object;)D
.end method

.method public abstract ˉʿ(Ljava/lang/Object;JF)V
.end method

.method public final ˉˆ(Ljava/lang/Object;JJ)V
    .locals 6

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﹳٴ:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public abstract ˑﹳ(JLjava/lang/Object;)F
.end method

.method public abstract ٴﹶ(Ljava/lang/Object;JB)V
.end method

.method public final ᵎﹶ(JLjava/lang/Object;)J
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﹳٴ:Lsun/misc/Unsafe;

    invoke-virtual {v0, p3, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final ᵔʾ(JLjava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﹳٴ:Lsun/misc/Unsafe;

    invoke-virtual {v0, p3, p1, p2, p4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final ᵔᵢ(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﹳٴ:Lsun/misc/Unsafe;

    invoke-virtual {v0, p3, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public ᵔﹳ()Z
    .locals 10

    .prologue
    const-class v0, Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﹳٴ:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "objectFieldOffset"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/reflect/Field;

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "arrayBaseOffset"

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v0, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v4, "arrayIndexScale"

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v0, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getInt"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v1, v7, v3

    aput-object v4, v7, v5

    invoke-virtual {v2, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putInt"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v6

    invoke-virtual {v2, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getLong"

    new-array v8, v6, [Ljava/lang/Class;

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    invoke-virtual {v2, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putLong"

    new-array v8, v7, [Ljava/lang/Class;

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v4, v8, v6

    invoke-virtual {v2, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "getObject"

    new-array v8, v6, [Ljava/lang/Class;

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    invoke-virtual {v2, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v0, "putObject"

    new-array v7, v7, [Ljava/lang/Class;

    aput-object v1, v7, v3

    aput-object v4, v7, v5

    aput-object v1, v7, v6

    invoke-virtual {v2, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v5

    :catchall_0
    move-exception v0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ʻᵎ;->ﹳٴ(Ljava/lang/Throwable;)V

    return v3
.end method

.method public final ⁱˊ(Ljava/lang/Class;)I
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﹳٴ:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public final ﹳٴ(Ljava/lang/Class;)I
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﹳٴ:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public abstract ﹳᐧ()Z
.end method

.method public abstract ﾞʻ(Ljava/lang/Object;JD)V
.end method

.method public final ﾞᴵ(JLjava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ᴵʼ;->ﹳٴ:Lsun/misc/Unsafe;

    invoke-virtual {v0, p3, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    return p1
.end method
