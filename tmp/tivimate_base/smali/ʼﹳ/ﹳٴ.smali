.class public final enum Lʼﹳ/ﹳٴ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lᴵʿ/ʽ;


# static fields
.field public static final synthetic ᴵˊ:[Lʼﹳ/ﹳٴ;


# instance fields
.field public final ʾˋ:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lʼﹳ/ﹳٴ;

    const-wide/16 v1, 0x0

    const-string v3, "FILE_SUPERSEDED"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lʼﹳ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lʼﹳ/ﹳٴ;

    const-wide/16 v2, 0x1

    const-string v5, "FILE_OPENED"

    const/4 v6, 0x1

    invoke-direct {v1, v2, v3, v5, v6}, Lʼﹳ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v2, Lʼﹳ/ﹳٴ;

    const-wide/16 v7, 0x2

    const-string v3, "FILE_CREATED"

    const/4 v5, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lʼﹳ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v3, Lʼﹳ/ﹳٴ;

    const-wide/16 v7, 0x3

    const-string v9, "FILE_OVERWRITTEN"

    const/4 v10, 0x3

    invoke-direct {v3, v7, v8, v9, v10}, Lʼﹳ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    const/4 v7, 0x4

    new-array v7, v7, [Lʼﹳ/ﹳٴ;

    aput-object v0, v7, v4

    aput-object v1, v7, v6

    aput-object v2, v7, v5

    aput-object v3, v7, v10

    sput-object v7, Lʼﹳ/ﹳٴ;->ᴵˊ:[Lʼﹳ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p3, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p1, p0, Lʼﹳ/ﹳٴ;->ʾˋ:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lʼﹳ/ﹳٴ;
    .locals 1

    const-class v0, Lʼﹳ/ﹳٴ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lʼﹳ/ﹳٴ;

    return-object p0
.end method

.method public static values()[Lʼﹳ/ﹳٴ;
    .locals 1

    sget-object v0, Lʼﹳ/ﹳٴ;->ᴵˊ:[Lʼﹳ/ﹳٴ;

    invoke-virtual {v0}, [Lʼﹳ/ﹳٴ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lʼﹳ/ﹳٴ;

    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    iget-wide v0, p0, Lʼﹳ/ﹳٴ;->ʾˋ:J

    return-wide v0
.end method
