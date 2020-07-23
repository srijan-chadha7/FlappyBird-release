.class public Lcom/badlogic/gdx/utils/JsonValue;
.super Ljava/lang/Object;
.source "JsonValue.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;,
        Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;,
        Lcom/badlogic/gdx/utils/JsonValue$ValueType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/JsonValue;",
        ">;"
    }
.end annotation


# instance fields
.field public child:Lcom/badlogic/gdx/utils/JsonValue;

.field private doubleValue:D

.field private longValue:J

.field public name:Ljava/lang/String;

.field public next:Lcom/badlogic/gdx/utils/JsonValue;

.field public parent:Lcom/badlogic/gdx/utils/JsonValue;

.field public prev:Lcom/badlogic/gdx/utils/JsonValue;

.field public size:I

.field private stringValue:Ljava/lang/String;

.field private type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;


# direct methods
.method public constructor <init>(D)V
    .registers 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->set(DLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(DLjava/lang/String;)V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->set(DLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->set(JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .registers 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->set(JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->set(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->set(Z)V

    return-void
.end method

.method private static indent(ILcom/badlogic/gdx/utils/StringBuilder;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_b

    const/16 v1, 0x9

    .line 1171
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method private static indent(ILjava/io/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_b

    const/16 v1, 0x9

    .line 1176
    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method private static isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z
    .registers 2

    .line 1158
    iget-object p0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_2
    if-eqz p0, :cond_16

    .line 1159
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_14

    .line 1158
    :cond_11
    iget-object p0, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return p0

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method private static isNumeric(Lcom/badlogic/gdx/utils/JsonValue;)Z
    .registers 2

    .line 1164
    iget-object p0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_2
    if-eqz p0, :cond_f

    .line 1165
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->isNumber()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 1164
    :cond_c
    iget-object p0, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method private json(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V
    .registers 8

    .line 958
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v0

    const/16 v1, 0x2c

    if-eqz v0, :cond_41

    .line 959
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v0, :cond_13

    const-string p1, "{}"

    .line 960
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_c2

    .line 962
    :cond_13
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    const/16 v0, 0x7b

    .line 964
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 966
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_1d
    if-eqz p1, :cond_3a

    .line 967
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v0, 0x3a

    .line 968
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 969
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->json(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    .line 970
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v0, :cond_37

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 966
    :cond_37
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_1d

    :cond_3a
    const/16 p1, 0x7d

    .line 974
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_c2

    .line 976
    :cond_41
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 977
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v0, :cond_52

    const-string p1, "[]"

    .line 978
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_c2

    .line 980
    :cond_52
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    const/16 v0, 0x5b

    .line 982
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 983
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_5c
    if-eqz p1, :cond_6b

    .line 984
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->json(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    .line 985
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v0, :cond_68

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 983
    :cond_68
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_5c

    :cond_6b
    const/16 p1, 0x5d

    .line 989
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_c2

    .line 991
    :cond_71
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 992
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_c2

    .line 993
    :cond_83
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isDouble()Z

    move-result p3

    if-eqz p3, :cond_9b

    .line 994
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v0

    .line 995
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v2

    long-to-double v2, v2

    cmpl-double p1, v0, v2

    if-nez p1, :cond_97

    move-wide v0, v2

    .line 996
    :cond_97
    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(D)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_c2

    .line 997
    :cond_9b
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isLong()Z

    move-result p3

    if-eqz p3, :cond_a9

    .line 998
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_c2

    .line 999
    :cond_a9
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isBoolean()Z

    move-result p3

    if-eqz p3, :cond_b7

    .line 1000
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_c2

    .line 1001
    :cond_b7
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result p3

    if-eqz p3, :cond_c3

    const-string p1, "null"

    .line 1002
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_c2
    return-void

    .line 1004
    :cond_c3
    new-instance p2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown object type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    goto :goto_db

    :goto_da
    throw p2

    :goto_db
    goto :goto_da
.end method

.method private prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V
    .registers 16

    .line 1026
    iget-object v0, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 1027
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0x20

    const/16 v4, 0x2c

    const/4 v5, 0x1

    if-eqz v1, :cond_80

    .line 1028
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_1a

    const-string p1, "{}"

    .line 1029
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_149

    .line 1031
    :cond_1a
    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v1

    xor-int/2addr v1, v5

    .line 1032
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v6

    :goto_23
    if-eqz v1, :cond_28

    const-string v7, "{\n"

    goto :goto_2a

    :cond_28
    const-string v7, "{ "

    .line 1035
    :goto_2a
    invoke-virtual {p2, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1037
    iget-object v7, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_2f
    if-eqz v7, :cond_73

    if-eqz v1, :cond_36

    .line 1038
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILcom/badlogic/gdx/utils/StringBuilder;)V

    .line 1039
    :cond_36
    iget-object v8, v7, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v8, ": "

    .line 1040
    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v8, p3, 0x1

    .line 1041
    invoke-direct {p0, v7, p2, v8, p4}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    if-eqz v1, :cond_4f

    .line 1042
    sget-object v8, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-eq v0, v8, :cond_56

    :cond_4f
    iget-object v8, v7, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v8, :cond_56

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_56
    if-eqz v1, :cond_5b

    const/16 v8, 0xa

    goto :goto_5d

    :cond_5b
    const/16 v8, 0x20

    .line 1043
    :goto_5d
    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    if-nez v1, :cond_70

    .line 1044
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v6

    iget v9, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->singleLineColumns:I

    if-le v8, v9, :cond_70

    .line 1045
    invoke-virtual {p2, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const/4 v1, 0x1

    goto :goto_23

    .line 1037
    :cond_70
    iget-object v7, v7, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2f

    :cond_73
    if-eqz v1, :cond_79

    sub-int/2addr p3, v5

    .line 1052
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILcom/badlogic/gdx/utils/StringBuilder;)V

    :cond_79
    const/16 p1, 0x7d

    .line 1053
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_149

    .line 1055
    :cond_80
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 1056
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_91

    const-string p1, "[]"

    .line 1057
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_149

    .line 1059
    :cond_91
    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v1

    xor-int/2addr v1, v5

    .line 1060
    iget-boolean v6, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->wrapNumericArrays:Z

    if-nez v6, :cond_a3

    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNumeric(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v6

    if-nez v6, :cond_a1

    goto :goto_a3

    :cond_a1
    const/4 v6, 0x0

    goto :goto_a4

    :cond_a3
    :goto_a3
    const/4 v6, 0x1

    .line 1061
    :goto_a4
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v7

    :goto_a8
    if-eqz v1, :cond_ad

    const-string v8, "[\n"

    goto :goto_af

    :cond_ad
    const-string v8, "[ "

    .line 1064
    :goto_af
    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1065
    iget-object v8, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_b4
    if-eqz v8, :cond_ec

    if-eqz v1, :cond_bb

    .line 1066
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILcom/badlogic/gdx/utils/StringBuilder;)V

    :cond_bb
    add-int/lit8 v9, p3, 0x1

    .line 1067
    invoke-direct {p0, v8, p2, v9, p4}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    if-eqz v1, :cond_c6

    .line 1068
    sget-object v9, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-eq v0, v9, :cond_cd

    :cond_c6
    iget-object v9, v8, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v9, :cond_cd

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_cd
    if-eqz v1, :cond_d2

    const/16 v9, 0xa

    goto :goto_d4

    :cond_d2
    const/16 v9, 0x20

    .line 1069
    :goto_d4
    invoke-virtual {p2, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    if-eqz v6, :cond_e9

    if-nez v1, :cond_e9

    .line 1070
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v9

    sub-int/2addr v9, v7

    iget v10, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->singleLineColumns:I

    if-le v9, v10, :cond_e9

    .line 1071
    invoke-virtual {p2, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const/4 v1, 0x1

    goto :goto_a8

    .line 1065
    :cond_e9
    iget-object v8, v8, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_b4

    :cond_ec
    if-eqz v1, :cond_f2

    sub-int/2addr p3, v5

    .line 1078
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILcom/badlogic/gdx/utils/StringBuilder;)V

    :cond_f2
    const/16 p1, 0x5d

    .line 1079
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_149

    .line 1081
    :cond_f8
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result p3

    if-eqz p3, :cond_10a

    .line 1082
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_149

    .line 1083
    :cond_10a
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isDouble()Z

    move-result p3

    if-eqz p3, :cond_122

    .line 1084
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide p3

    .line 1085
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v0

    long-to-double v0, v0

    cmpl-double p1, p3, v0

    if-nez p1, :cond_11e

    move-wide p3, v0

    .line 1086
    :cond_11e
    invoke-virtual {p2, p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(D)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_149

    .line 1087
    :cond_122
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isLong()Z

    move-result p3

    if-eqz p3, :cond_130

    .line 1088
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_149

    .line 1089
    :cond_130
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isBoolean()Z

    move-result p3

    if-eqz p3, :cond_13e

    .line 1090
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_149

    .line 1091
    :cond_13e
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result p3

    if-eqz p3, :cond_14a

    const-string p1, "null"

    .line 1092
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_149
    return-void

    .line 1094
    :cond_14a
    new-instance p2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown object type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    goto :goto_162

    :goto_161
    throw p2

    :goto_162
    goto :goto_161
.end method

.method private prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Ljava/io/Writer;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1106
    iget-object v0, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 1107
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0x20

    const/16 v4, 0x2c

    const/4 v5, 0x1

    if-eqz v1, :cond_76

    .line 1108
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_1a

    const-string p1, "{}"

    .line 1109
    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/16 :goto_127

    .line 1111
    :cond_1a
    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v6, 0x6

    if-le v1, v6, :cond_26

    goto :goto_28

    :cond_26
    const/4 v1, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v1, 0x1

    :goto_29
    if-eqz v1, :cond_2e

    const-string v6, "{\n"

    goto :goto_30

    :cond_2e
    const-string v6, "{ "

    .line 1112
    :goto_30
    invoke-virtual {p2, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1114
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_35
    if-eqz p1, :cond_69

    if-eqz v1, :cond_3c

    .line 1115
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILjava/io/Writer;)V

    .line 1116
    :cond_3c
    iget-object v6, p1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v6, ": "

    .line 1117
    invoke-virtual {p2, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    add-int/lit8 v6, p3, 0x1

    .line 1118
    invoke-direct {p0, p1, p2, v6, p4}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Ljava/io/Writer;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    if-eqz v1, :cond_55

    .line 1119
    sget-object v6, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-eq v0, v6, :cond_5c

    :cond_55
    iget-object v6, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v6, :cond_5c

    invoke-virtual {p2, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    :cond_5c
    if-eqz v1, :cond_61

    const/16 v6, 0xa

    goto :goto_63

    :cond_61
    const/16 v6, 0x20

    .line 1120
    :goto_63
    invoke-virtual {p2, v6}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 1114
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_35

    :cond_69
    if-eqz v1, :cond_6f

    sub-int/2addr p3, v5

    .line 1122
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILjava/io/Writer;)V

    :cond_6f
    const/16 p1, 0x7d

    .line 1123
    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    goto/16 :goto_127

    .line 1125
    :cond_76
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 1126
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_87

    const-string p1, "[]"

    .line 1127
    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/16 :goto_127

    .line 1129
    :cond_87
    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_91

    const-string v6, "[\n"

    goto :goto_93

    :cond_91
    const-string v6, "[ "

    .line 1130
    :goto_93
    invoke-virtual {p2, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1132
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_98
    if-eqz p1, :cond_be

    if-eqz v1, :cond_9f

    .line 1133
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILjava/io/Writer;)V

    :cond_9f
    add-int/lit8 v6, p3, 0x1

    .line 1134
    invoke-direct {p0, p1, p2, v6, p4}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Ljava/io/Writer;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    if-eqz v1, :cond_aa

    .line 1135
    sget-object v6, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-eq v0, v6, :cond_b1

    :cond_aa
    iget-object v6, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v6, :cond_b1

    invoke-virtual {p2, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    :cond_b1
    if-eqz v1, :cond_b6

    const/16 v6, 0xa

    goto :goto_b8

    :cond_b6
    const/16 v6, 0x20

    .line 1136
    :goto_b8
    invoke-virtual {p2, v6}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 1132
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_98

    :cond_be
    if-eqz v1, :cond_c4

    sub-int/2addr p3, v5

    .line 1138
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILjava/io/Writer;)V

    :cond_c4
    const/16 p1, 0x5d

    .line 1139
    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    goto :goto_127

    .line 1141
    :cond_ca
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result p3

    if-eqz p3, :cond_dc

    .line 1142
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_127

    .line 1143
    :cond_dc
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isDouble()Z

    move-result p3

    if-eqz p3, :cond_f8

    .line 1144
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide p3

    .line 1145
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v0

    long-to-double v0, v0

    cmpl-double p1, p3, v0

    if-nez p1, :cond_f0

    move-wide p3, v0

    .line 1146
    :cond_f0
    invoke-static {p3, p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_127

    .line 1147
    :cond_f8
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isLong()Z

    move-result p3

    if-eqz p3, :cond_10a

    .line 1148
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_127

    .line 1149
    :cond_10a
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isBoolean()Z

    move-result p3

    if-eqz p3, :cond_11c

    .line 1150
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_127

    .line 1151
    :cond_11c
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result p3

    if-eqz p3, :cond_128

    const-string p1, "null"

    .line 1152
    invoke-virtual {p2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :goto_127
    return-void

    .line 1154
    :cond_128
    new-instance p2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown object type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    goto :goto_140

    :goto_13f
    throw p2

    :goto_140
    goto :goto_13f
.end method


# virtual methods
.method public addChild(Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 4

    .line 888
    iput-object p0, p1, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    .line 889
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v0, :cond_9

    .line 891
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    return-void

    .line 894
    :cond_9
    :goto_9
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_10

    .line 895
    iput-object p1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    return-void

    :cond_10
    move-object v0, v1

    goto :goto_9
.end method

.method public addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 882
    iput-object p1, p2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    .line 883
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/JsonValue;->addChild(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-void

    .line 881
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public asBoolean()Z
    .registers 9

    .line 265
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4f

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_44

    const/4 v2, 0x3

    const-wide/16 v4, 0x0

    if-eq v0, v2, :cond_3b

    const/4 v2, 0x4

    if-ne v0, v2, :cond_22

    .line 273
    iget-wide v6, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    return v1

    .line 275
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to boolean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_3b
    iget-wide v6, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_42

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    :goto_43
    return v1

    .line 269
    :cond_44
    iget-wide v4, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v1, 0x0

    :goto_4e
    return v1

    .line 267
    :cond_4f
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public asBooleanArray()[Z
    .registers 12

    .line 477
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_68

    .line 478
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [Z

    .line 480
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-eqz v1, :cond_67

    .line 482
    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v5, v1, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5b

    const/4 v6, 0x2

    if-eq v4, v6, :cond_52

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    if-eq v4, v6, :cond_4b

    const/4 v6, 0x4

    if-ne v4, v6, :cond_32

    .line 493
    iget-wide v9, v1, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    cmp-long v4, v9, v7

    if-eqz v4, :cond_30

    :goto_2e
    const/4 v4, 0x1

    goto :goto_61

    :cond_30
    const/4 v4, 0x0

    goto :goto_61

    .line 496
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to boolean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_4b
    iget-wide v9, v1, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    cmp-long v4, v9, v7

    if-nez v4, :cond_30

    goto :goto_2e

    .line 487
    :cond_52
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    const-wide/16 v8, 0x0

    cmpl-double v4, v6, v8

    if-nez v4, :cond_30

    goto :goto_2e

    .line 484
    :cond_5b
    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 498
    :goto_61
    aput-boolean v4, v0, v3

    .line 480
    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/2addr v3, v5

    goto :goto_e

    :cond_67
    return-object v0

    .line 477
    :cond_68
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_82

    :goto_81
    throw v0

    :goto_82
    goto :goto_81
.end method

.method public asByte()B
    .registers 7

    .line 281
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_44

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3f

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3a

    const/4 v2, 0x4

    if-ne v0, v2, :cond_21

    .line 289
    iget-wide v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return v1

    .line 291
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_3a
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v1, v0

    int-to-byte v0, v1

    return v0

    .line 285
    :cond_3f
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0

    .line 283
    :cond_44
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public asByteArray()[B
    .registers 11

    .line 506
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_61

    .line 507
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [B

    .line 509
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-eqz v1, :cond_60

    .line 511
    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v5, v1, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_54

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4f

    const/4 v6, 0x3

    if-eq v4, v6, :cond_4b

    const/4 v6, 0x4

    if-ne v4, v6, :cond_32

    .line 522
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_30

    const/4 v4, 0x1

    goto :goto_5a

    :cond_30
    const/4 v4, 0x0

    goto :goto_5a

    .line 525
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to byte: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_4b
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v4, v6

    goto :goto_52

    .line 516
    :cond_4f
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v4, v6

    :goto_52
    int-to-byte v4, v4

    goto :goto_5a

    .line 513
    :cond_54
    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    .line 527
    :goto_5a
    aput-byte v4, v0, v3

    .line 509
    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/2addr v3, v5

    goto :goto_e

    :cond_60
    return-object v0

    .line 506
    :cond_61
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_7b

    :goto_7a
    throw v0

    :goto_7b
    goto :goto_7a
.end method

.method public asChar()C
    .registers 8

    .line 313
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_45

    const/4 v3, 0x2

    if-eq v0, v3, :cond_40

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3b

    const/4 v3, 0x4

    if-ne v0, v3, :cond_22

    .line 321
    iget-wide v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    return v1

    .line 323
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to char: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_3b
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v1, v0

    int-to-char v0, v1

    return v0

    .line 317
    :cond_40
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v0, v0

    int-to-char v0, v0

    return v0

    .line 315
    :cond_45
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4e

    goto :goto_54

    :cond_4e
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_54
    return v2
.end method

.method public asCharArray()[C
    .registers 11

    .line 564
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_6a

    .line 565
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [C

    .line 567
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-eqz v1, :cond_69

    .line 569
    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v5, v1, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_54

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4f

    const/4 v6, 0x3

    if-eq v4, v6, :cond_4b

    const/4 v6, 0x4

    if-ne v4, v6, :cond_32

    .line 580
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_30

    const/4 v4, 0x1

    goto :goto_63

    :cond_30
    :goto_30
    const/4 v4, 0x0

    goto :goto_63

    .line 583
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to char: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_4b
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v4, v6

    goto :goto_52

    .line 574
    :cond_4f
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v4, v6

    :goto_52
    int-to-char v4, v4

    goto :goto_63

    .line 571
    :cond_54
    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5d

    goto :goto_30

    :cond_5d
    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 585
    :goto_63
    aput-char v4, v0, v3

    .line 567
    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/2addr v3, v5

    goto :goto_e

    :cond_69
    return-object v0

    .line 564
    :cond_6a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_84

    :goto_83
    throw v0

    :goto_84
    goto :goto_83
.end method

.method public asDouble()D
    .registers 6

    .line 217
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_44

    const/4 v1, 0x2

    if-eq v0, v1, :cond_41

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x4

    if-ne v0, v1, :cond_24

    .line 225
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_21

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_23

    :cond_21
    const-wide/16 v0, 0x0

    :goto_23
    return-wide v0

    .line 227
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to double: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_3d
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-double v0, v0

    return-wide v0

    .line 221
    :cond_41
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    return-wide v0

    .line 219
    :cond_44
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public asDoubleArray()[D
    .registers 10

    .line 390
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_60

    .line 391
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 393
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_d
    if-eqz v2, :cond_5f

    .line 395
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_53

    const/4 v5, 0x2

    if-eq v3, v5, :cond_50

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4c

    const/4 v5, 0x4

    if-ne v3, v5, :cond_33

    .line 406
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_30

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    goto :goto_59

    :cond_30
    const-wide/16 v5, 0x0

    goto :goto_59

    .line 409
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to double: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_4c
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-double v5, v5

    goto :goto_59

    .line 400
    :cond_50
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    goto :goto_59

    .line 397
    :cond_53
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 411
    :goto_59
    aput-wide v5, v0, v1

    .line 393
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/2addr v1, v4

    goto :goto_d

    :cond_5f
    return-object v0

    .line 390
    :cond_60
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_7a

    :goto_79
    throw v0

    :goto_7a
    goto :goto_79
.end method

.method public asFloat()F
    .registers 6

    .line 201
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_44

    const/4 v1, 0x2

    if-eq v0, v1, :cond_40

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x4

    if-ne v0, v1, :cond_23

    .line 209
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_21

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0

    .line 211
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to float: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_3c
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-float v0, v0

    return v0

    .line 205
    :cond_40
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-float v0, v0

    return v0

    .line 203
    :cond_44
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public asFloatArray()[F
    .registers 10

    .line 361
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_60

    .line 362
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 364
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_d
    if-eqz v2, :cond_5f

    .line 366
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_53

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4f

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4b

    const/4 v5, 0x4

    if-ne v3, v5, :cond_32

    .line 377
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_30

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_59

    :cond_30
    const/4 v3, 0x0

    goto :goto_59

    .line 380
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to float: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_4b
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-float v3, v5

    goto :goto_59

    .line 371
    :cond_4f
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-float v3, v5

    goto :goto_59

    .line 368
    :cond_53
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 382
    :goto_59
    aput v3, v0, v1

    .line 364
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/2addr v1, v4

    goto :goto_d

    :cond_5f
    return-object v0

    .line 361
    :cond_60
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_7a

    :goto_79
    throw v0

    :goto_7a
    goto :goto_79
.end method

.method public asInt()I
    .registers 7

    .line 249
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_42

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3e

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3a

    const/4 v2, 0x4

    if-ne v0, v2, :cond_21

    .line 257
    iget-wide v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return v1

    .line 259
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_3a
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v1, v0

    return v1

    .line 253
    :cond_3e
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v0, v0

    return v0

    .line 251
    :cond_42
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public asIntArray()[I
    .registers 11

    .line 448
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_60

    .line 449
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [I

    .line 451
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-eqz v1, :cond_5f

    .line 453
    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v5, v1, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_53

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4f

    const/4 v6, 0x3

    if-eq v4, v6, :cond_4b

    const/4 v6, 0x4

    if-ne v4, v6, :cond_32

    .line 464
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_30

    const/4 v4, 0x1

    goto :goto_59

    :cond_30
    const/4 v4, 0x0

    goto :goto_59

    .line 467
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to int: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_4b
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v4, v6

    goto :goto_59

    .line 458
    :cond_4f
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v4, v6

    goto :goto_59

    .line 455
    :cond_53
    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 469
    :goto_59
    aput v4, v0, v3

    .line 451
    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/2addr v3, v5

    goto :goto_e

    :cond_5f
    return-object v0

    .line 448
    :cond_60
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_7a

    :goto_79
    throw v0

    :goto_7a
    goto :goto_79
.end method

.method public asLong()J
    .registers 6

    .line 233
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_41

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x4

    if-ne v0, v1, :cond_21

    .line 241
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_20

    const-wide/16 v2, 0x1

    :cond_20
    return-wide v2

    .line 243
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_3a
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    return-wide v0

    .line 237
    :cond_3d
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-long v0, v0

    return-wide v0

    .line 235
    :cond_41
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public asLongArray()[J
    .registers 10

    .line 419
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_5d

    .line 420
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 422
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_d
    if-eqz v2, :cond_5c

    .line 424
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_50

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4c

    const/4 v5, 0x3

    if-eq v3, v5, :cond_49

    const/4 v5, 0x4

    if-ne v3, v5, :cond_30

    .line 435
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_56

    const-wide/16 v7, 0x1

    goto :goto_56

    .line 438
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to long: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_49
    iget-wide v7, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    goto :goto_56

    .line 429
    :cond_4c
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-long v7, v5

    goto :goto_56

    .line 426
    :cond_50
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 440
    :cond_56
    :goto_56
    aput-wide v7, v0, v1

    .line 422
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/2addr v1, v4

    goto :goto_d

    :cond_5c
    return-object v0

    .line 419
    :cond_5d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_77

    :goto_76
    throw v0

    :goto_77
    goto :goto_76
.end method

.method public asShort()S
    .registers 7

    .line 297
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_44

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3f

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3a

    const/4 v2, 0x4

    if-ne v0, v2, :cond_21

    .line 305
    iget-wide v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return v1

    .line 307
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to short: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_3a
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v1, v0

    int-to-short v0, v1

    return v0

    .line 301
    :cond_3f
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v0, v0

    int-to-short v0, v0

    return v0

    .line 299
    :cond_44
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public asShortArray()[S
    .registers 11

    .line 535
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_61

    .line 536
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [S

    .line 538
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-eqz v1, :cond_60

    .line 540
    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v5, v1, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_54

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4f

    const/4 v6, 0x3

    if-eq v4, v6, :cond_4b

    const/4 v6, 0x4

    if-ne v4, v6, :cond_32

    .line 551
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_30

    const/4 v4, 0x1

    goto :goto_5a

    :cond_30
    const/4 v4, 0x0

    goto :goto_5a

    .line 554
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to short: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_4b
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v4, v6

    goto :goto_52

    .line 545
    :cond_4f
    iget-wide v6, v1, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v4, v6

    :goto_52
    int-to-short v4, v4

    goto :goto_5a

    .line 542
    :cond_54
    iget-object v4, v1, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v4

    .line 556
    :goto_5a
    aput-short v4, v0, v3

    .line 538
    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/2addr v3, v5

    goto :goto_e

    :cond_60
    return-object v0

    .line 535
    :cond_61
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_7b

    :goto_7a
    throw v0

    :goto_7b
    goto :goto_7a
.end method

.method public asString()Ljava/lang/String;
    .registers 6

    .line 183
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_42

    const/4 v1, 0x4

    if-eq v0, v1, :cond_34

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x0

    return-object v0

    .line 195
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_34
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3f

    const-string v0, "true"

    goto :goto_41

    :cond_3f
    const-string v0, "false"

    :goto_41
    return-object v0

    .line 189
    :cond_42
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_47

    goto :goto_4d

    :cond_47
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_4d
    return-object v0

    .line 187
    :cond_4e
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_53

    goto :goto_59

    :cond_53
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    :goto_59
    return-object v0

    .line 185
    :cond_5a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public asStringArray()[Ljava/lang/String;
    .registers 10

    .line 329
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_72

    .line 330
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 332
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_d
    if-eqz v2, :cond_71

    .line 334
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_69

    const/4 v5, 0x2

    if-eq v3, v5, :cond_5d

    const/4 v5, 0x3

    if-eq v3, v5, :cond_51

    const/4 v5, 0x4

    if-eq v3, v5, :cond_43

    const/4 v5, 0x5

    if-ne v3, v5, :cond_2a

    const/4 v3, 0x0

    goto :goto_6b

    .line 351
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value cannot be converted to string: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_43
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_4e

    const-string v3, "true"

    goto :goto_6b

    :cond_4e
    const-string v3, "false"

    goto :goto_6b

    .line 342
    :cond_51
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    if-eqz v3, :cond_56

    goto :goto_6b

    :cond_56
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_6b

    .line 339
    :cond_5d
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    if-eqz v3, :cond_62

    goto :goto_6b

    :cond_62
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    goto :goto_6b

    .line 336
    :cond_69
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    .line 353
    :goto_6b
    aput-object v3, v0, v1

    .line 332
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/2addr v1, v4

    goto :goto_d

    :cond_71
    return-object v0

    .line 329
    :cond_72
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_8c

    :goto_8b
    throw v0

    :goto_8c
    goto :goto_8b
.end method

.method public child()Lcom/badlogic/gdx/utils/JsonValue;
    .registers 2

    .line 876
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public get(I)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_2
    if-eqz v0, :cond_b

    if-lez p1, :cond_b

    add-int/lit8 p1, p1, -0x1

    .line 88
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    :cond_b
    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_2
    if-eqz v0, :cond_11

    .line 97
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 98
    :cond_e
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    :cond_11
    return-object v0
.end method

.method public getBoolean(I)Z
    .registers 4

    .line 772
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 774
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result p1

    return p1

    .line 773
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 5

    .line 700
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 702
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result p1

    return p1

    .line 701
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 635
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 636
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_17

    :cond_13
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result p2

    :cond_17
    :goto_17
    return p2
.end method

.method public getByte(I)B
    .registers 4

    .line 780
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 782
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asByte()B

    move-result p1

    return p1

    .line 781
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getByte(Ljava/lang/String;)B
    .registers 5

    .line 708
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 710
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asByte()B

    move-result p1

    return p1

    .line 709
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByte(Ljava/lang/String;B)B
    .registers 4

    .line 641
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 642
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_17

    :cond_13
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asByte()B

    move-result p2

    :cond_17
    :goto_17
    return p2
.end method

.method public getChar(I)C
    .registers 4

    .line 796
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 798
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asChar()C

    move-result p1

    return p1

    .line 797
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getChar(Ljava/lang/String;)C
    .registers 5

    .line 724
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 726
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asChar()C

    move-result p1

    return p1

    .line 725
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChar(Ljava/lang/String;C)C
    .registers 4

    .line 653
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 654
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_17

    :cond_13
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asChar()C

    move-result p2

    :cond_17
    :goto_17
    return p2
.end method

.method public getChild(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 2

    .line 598
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_a

    .line 599
    :cond_8
    iget-object p1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_a
    return-object p1
.end method

.method public getDouble(I)D
    .registers 4

    .line 748
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 750
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v0

    return-wide v0

    .line 749
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 5

    .line 676
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 678
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v0

    return-wide v0

    .line 677
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 5

    .line 617
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 618
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_17

    :cond_13
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide p2

    :cond_17
    :goto_17
    return-wide p2
.end method

.method public getFloat(I)F
    .registers 4

    .line 740
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 742
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result p1

    return p1

    .line 741
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 5

    .line 668
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 670
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result p1

    return p1

    .line 669
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 4

    .line 611
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 612
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_17

    :cond_13
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result p2

    :cond_17
    :goto_17
    return p2
.end method

.method public getInt(I)I
    .registers 4

    .line 764
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 766
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result p1

    return p1

    .line 765
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 5

    .line 692
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 694
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result p1

    return p1

    .line 693
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4

    .line 629
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 630
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_17

    :cond_13
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result p2

    :cond_17
    :goto_17
    return p2
.end method

.method public getLong(I)J
    .registers 4

    .line 756
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 758
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v0

    return-wide v0

    .line 757
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 5

    .line 684
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 686
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v0

    return-wide v0

    .line 685
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 5

    .line 623
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 624
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_17

    :cond_13
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide p2

    :cond_17
    :goto_17
    return-wide p2
.end method

.method public getShort(I)S
    .registers 4

    .line 788
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 790
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asShort()S

    move-result p1

    return p1

    .line 789
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getShort(Ljava/lang/String;)S
    .registers 5

    .line 716
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 718
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asShort()S

    move-result p1

    return p1

    .line 717
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getShort(Ljava/lang/String;S)S
    .registers 4

    .line 647
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 648
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_17

    :cond_13
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asShort()S

    move-result p2

    :cond_17
    :goto_17
    return p2
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4

    .line 732
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 734
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 733
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed value not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 660
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 662
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 661
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Named value not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 605
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 606
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_17

    :cond_13
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p2

    :cond_17
    :goto_17
    return-object p2
.end method

.method public has(Ljava/lang/String;)Z
    .registers 2

    .line 104
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public hasChild(Ljava/lang/String;)Z
    .registers 2

    .line 592
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->getChild(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public isArray()Z
    .registers 3

    .line 811
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isBoolean()Z
    .registers 3

    .line 836
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->booleanValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isDouble()Z
    .registers 3

    .line 828
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 170
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isLong()Z
    .registers 3

    .line 832
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isNull()Z
    .registers 3

    .line 840
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->nullValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isNumber()Z
    .registers 3

    .line 824
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isObject()Z
    .registers 3

    .line 815
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isString()Z
    .registers 3

    .line 819
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->stringValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isValue()Z
    .registers 4

    .line 845
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1b

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1b

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1b

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1b

    const/4 v0, 0x0

    return v0

    :cond_1b
    return v1
.end method

.method public iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;
    .registers 2

    .line 1184
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 39
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .registers 2

    .line 859
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public next()Lcom/badlogic/gdx/utils/JsonValue;
    .registers 2

    .line 906
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public notEmpty()Z
    .registers 2

    .line 165
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public parent()Lcom/badlogic/gdx/utils/JsonValue;
    .registers 2

    .line 870
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public prettyPrint(Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;
    .registers 4

    .line 1020
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 1021
    invoke-direct {p0, p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    .line 1022
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prettyPrint(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;I)Ljava/lang/String;
    .registers 4

    .line 1013
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;-><init>()V

    .line 1014
    iput-object p1, v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 1015
    iput p2, v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->singleLineColumns:I

    .line 1016
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prettyPrint(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;Ljava/io/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1100
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;-><init>()V

    .line 1101
    iput-object p1, v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    const/4 p1, 0x0

    .line 1102
    invoke-direct {p0, p0, p2, p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Ljava/io/Writer;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    return-void
.end method

.method public prev()Lcom/badlogic/gdx/utils/JsonValue;
    .registers 2

    .line 916
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public remove(I)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 4

    .line 134
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 136
    :cond_8
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_17

    .line 137
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 138
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_21

    iput-object v0, v1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_21

    .line 140
    :cond_17
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 141
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v0, :cond_21

    iput-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 143
    :cond_21
    :goto_21
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 4

    .line 150
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 152
    :cond_8
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_17

    .line 153
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 154
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_21

    iput-object v0, v1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_21

    .line 156
    :cond_17
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 157
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v0, :cond_21

    iput-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 159
    :cond_21
    :goto_21
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    return-object p1
.end method

.method public require(I)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 5

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_2
    if-eqz v0, :cond_b

    if-lez p1, :cond_b

    add-int/lit8 p1, p1, -0x1

    .line 114
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    :cond_b
    if-eqz v0, :cond_e

    return-object v0

    .line 116
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child not found with index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_26

    :goto_25
    throw v0

    :goto_26
    goto :goto_25
.end method

.method public require(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 5

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_2
    if-eqz v0, :cond_11

    .line 124
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 125
    :cond_e
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    :cond_11
    if-eqz v0, :cond_14

    return-object v0

    .line 126
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child not found with name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2c

    :goto_2b
    throw v0

    :goto_2c
    goto :goto_2b
.end method

.method public set(DLjava/lang/String;)V
    .registers 4

    .line 931
    iput-wide p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-long p1, p1

    .line 932
    iput-wide p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    .line 933
    iput-object p3, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    .line 934
    sget-object p1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-void
.end method

.method public set(JLjava/lang/String;)V
    .registers 4

    .line 939
    iput-wide p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-double p1, p1

    .line 940
    iput-wide p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    .line 941
    iput-object p3, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    .line 942
    sget-object p1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .registers 2

    .line 925
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    if-nez p1, :cond_7

    .line 926
    sget-object p1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->nullValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    goto :goto_9

    :cond_7
    sget-object p1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->stringValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    :goto_9
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-void
.end method

.method public set(Z)V
    .registers 4

    if-eqz p1, :cond_5

    const-wide/16 v0, 0x1

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x0

    .line 946
    :goto_7
    iput-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    .line 947
    sget-object p1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->booleanValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 864
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    return-void
.end method

.method public setNext(Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 2

    .line 910
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    return-void
.end method

.method public setPrev(Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 2

    .line 920
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    return-void
.end method

.method public setType(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 807
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-void

    .line 806
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "type cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    return v0
.end method

.method public toJson(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)Ljava/lang/String;
    .registers 4

    .line 951
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 952
    :cond_b
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 953
    invoke-direct {p0, p0, v0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->json(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    .line 954
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1008
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    const-string v1, ": "

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_29
    return-object v0

    .line 1009
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-nez v2, :cond_36

    const-string v1, ""

    goto :goto_47

    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace()Ljava/lang/String;
    .registers 5

    .line 1220
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v1, "[]"

    if-nez v0, :cond_19

    .line 1221
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v2, :cond_d

    return-object v1

    .line 1222
    :cond_d
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_16

    const-string v0, "{}"

    return-object v0

    :cond_16
    const-string v0, ""

    return-object v0

    .line 1226
    :cond_19
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v2, :cond_44

    const/4 v0, 0x0

    .line 1229
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_24
    if-eqz v2, :cond_7f

    if-ne v2, p0, :cond_3f

    .line 1231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7f

    .line 1229
    :cond_3f
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 1235
    :cond_44
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6e

    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    const-string v2, "\""

    const-string v3, "\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7f

    .line 1238
    :cond_6e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1239
    :cond_7f
    :goto_7f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->trace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lcom/badlogic/gdx/utils/JsonValue$ValueType;
    .registers 2

    .line 802
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-object v0
.end method
