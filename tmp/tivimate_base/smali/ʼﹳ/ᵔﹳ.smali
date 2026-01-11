.class public final enum Lʼﹳ/ᵔﹳ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lᴵʿ/ʽ;


# static fields
.field public static final enum ʽʽ:Lʼﹳ/ᵔﹳ;

.field public static final enum ˈٴ:Lʼﹳ/ᵔﹳ;

.field public static final synthetic ˊʻ:[Lʼﹳ/ᵔﹳ;

.field public static final enum ᴵˊ:Lʼﹳ/ᵔﹳ;

.field public static final ᴵᵔ:Ljava/util/Set;


# instance fields
.field public final ʾˋ:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lʼﹳ/ᵔﹳ;

    const-wide/16 v1, 0x1

    const-string v3, "FILE_SHARE_READ"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lʼﹳ/ᵔﹳ;-><init>(JLjava/lang/String;I)V

    sput-object v0, Lʼﹳ/ᵔﹳ;->ᴵˊ:Lʼﹳ/ᵔﹳ;

    new-instance v1, Lʼﹳ/ᵔﹳ;

    const-wide/16 v2, 0x2

    const-string v5, "FILE_SHARE_WRITE"

    const/4 v6, 0x1

    invoke-direct {v1, v2, v3, v5, v6}, Lʼﹳ/ᵔﹳ;-><init>(JLjava/lang/String;I)V

    sput-object v1, Lʼﹳ/ᵔﹳ;->ʽʽ:Lʼﹳ/ᵔﹳ;

    new-instance v2, Lʼﹳ/ᵔﹳ;

    const-wide/16 v7, 0x4

    const-string v3, "FILE_SHARE_DELETE"

    const/4 v5, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lʼﹳ/ᵔﹳ;-><init>(JLjava/lang/String;I)V

    sput-object v2, Lʼﹳ/ᵔﹳ;->ˈٴ:Lʼﹳ/ᵔﹳ;

    const/4 v3, 0x3

    new-array v3, v3, [Lʼﹳ/ᵔﹳ;

    aput-object v0, v3, v4

    aput-object v1, v3, v6

    aput-object v2, v3, v5

    sput-object v3, Lʼﹳ/ᵔﹳ;->ˊʻ:[Lʼﹳ/ᵔﹳ;

    const-class v0, Lʼﹳ/ᵔﹳ;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lʼﹳ/ᵔﹳ;->ᴵᵔ:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p3, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p1, p0, Lʼﹳ/ᵔﹳ;->ʾˋ:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lʼﹳ/ᵔﹳ;
    .locals 1

    const-class v0, Lʼﹳ/ᵔﹳ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lʼﹳ/ᵔﹳ;

    return-object p0
.end method

.method public static values()[Lʼﹳ/ᵔﹳ;
    .locals 1

    sget-object v0, Lʼﹳ/ᵔﹳ;->ˊʻ:[Lʼﹳ/ᵔﹳ;

    invoke-virtual {v0}, [Lʼﹳ/ᵔﹳ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lʼﹳ/ᵔﹳ;

    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    iget-wide v0, p0, Lʼﹳ/ᵔﹳ;->ʾˋ:J

    return-wide v0
.end method
