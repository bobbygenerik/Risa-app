.class public final enum Lˊʾ/יـ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lᴵʿ/ʽ;


# static fields
.field public static final enum ʽʽ:Lˊʾ/יـ;

.field public static final enum ˈٴ:Lˊʾ/יـ;

.field public static final enum ᴵˊ:Lˊʾ/יـ;

.field public static final synthetic ᴵᵔ:[Lˊʾ/יـ;


# instance fields
.field public final ʾˋ:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lˊʾ/יـ;

    const-wide/16 v1, 0x1

    const-string v3, "SMB2_SESSION_FLAG_IS_GUEST"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lˊʾ/יـ;-><init>(JLjava/lang/String;I)V

    sput-object v0, Lˊʾ/יـ;->ᴵˊ:Lˊʾ/יـ;

    new-instance v1, Lˊʾ/יـ;

    const-wide/16 v2, 0x2

    const-string v5, "SMB2_SESSION_FLAG_IS_NULL"

    const/4 v6, 0x1

    invoke-direct {v1, v2, v3, v5, v6}, Lˊʾ/יـ;-><init>(JLjava/lang/String;I)V

    sput-object v1, Lˊʾ/יـ;->ʽʽ:Lˊʾ/יـ;

    new-instance v2, Lˊʾ/יـ;

    const-wide/16 v7, 0x4

    const-string v3, "SMB2_SESSION_FLAG_ENCRYPT_DATA"

    const/4 v5, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lˊʾ/יـ;-><init>(JLjava/lang/String;I)V

    sput-object v2, Lˊʾ/יـ;->ˈٴ:Lˊʾ/יـ;

    const/4 v3, 0x3

    new-array v3, v3, [Lˊʾ/יـ;

    aput-object v0, v3, v4

    aput-object v1, v3, v6

    aput-object v2, v3, v5

    sput-object v3, Lˊʾ/יـ;->ᴵᵔ:[Lˊʾ/יـ;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p3, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p1, p0, Lˊʾ/יـ;->ʾˋ:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lˊʾ/יـ;
    .locals 1

    const-class v0, Lˊʾ/יـ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lˊʾ/יـ;

    return-object p0
.end method

.method public static values()[Lˊʾ/יـ;
    .locals 1

    sget-object v0, Lˊʾ/יـ;->ᴵᵔ:[Lˊʾ/יـ;

    invoke-virtual {v0}, [Lˊʾ/יـ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lˊʾ/יـ;

    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    iget-wide v0, p0, Lˊʾ/יـ;->ʾˋ:J

    return-wide v0
.end method
